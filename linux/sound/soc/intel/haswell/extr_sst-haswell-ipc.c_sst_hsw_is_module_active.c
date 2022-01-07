
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_module {scalar_t__ state; } ;
struct sst_hsw {int dsp; } ;


 scalar_t__ SST_MODULE_STATE_ACTIVE ;
 struct sst_module* sst_module_get_from_id (int ,int ) ;

bool sst_hsw_is_module_active(struct sst_hsw *hsw, u32 module_id)
{
 struct sst_module *module;

 module = sst_module_get_from_id(hsw->dsp, module_id);
 if (module != ((void*)0) && module->state == SST_MODULE_STATE_ACTIVE)
  return 1;
 else
  return 0;
}
