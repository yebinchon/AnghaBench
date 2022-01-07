
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_hsw {int enabled_modules_rtd3; } ;



void sst_hsw_set_module_enabled_rtd3(struct sst_hsw *hsw, u32 module_id)
{
 hsw->enabled_modules_rtd3 |= (1 << module_id);
}
