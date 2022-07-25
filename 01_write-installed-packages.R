library(tidyverse)

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
ip <- installed.packages() %>% as_tibble()

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
ip <- select(ip, Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
out_path <- here::here("installed-packages.csv")
write_csv(ip, out_path)

ip
