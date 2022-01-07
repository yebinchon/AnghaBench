
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int CONFIG_ACPI_NFIT ;
 int CONFIG_BLK_DEV_PMEM ;
 int CONFIG_DEV_DAX ;
 int CONFIG_DEV_DAX_PMEM ;
 int CONFIG_LIBNVDIMM ;
 int CONFIG_ND_BLK ;
 int CONFIG_ND_BTT ;
 int CONFIG_ND_PFN ;
 int IS_MODULE (int ) ;

void check(void)
{




 BUILD_BUG_ON(!IS_MODULE(CONFIG_LIBNVDIMM));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_BLK_DEV_PMEM));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_ND_BTT));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_ND_PFN));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_ND_BLK));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_ACPI_NFIT));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_DEV_DAX));
 BUILD_BUG_ON(!IS_MODULE(CONFIG_DEV_DAX_PMEM));
}
