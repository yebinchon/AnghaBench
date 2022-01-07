
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module {int state; } ;
struct sst_hsw {int dsp; } ;
typedef enum sst_hsw_module_id { ____Placeholder_sst_hsw_module_id } sst_hsw_module_id ;


 int SST_HSW_MAX_MODULE_ID ;
 int SST_HSW_MODULE_BASE_FW ;
 int SST_HSW_MODULE_WAVES ;
 int SST_MODULE_STATE_ACTIVE ;
 int SST_MODULE_STATE_INITIALIZED ;
 struct sst_module* sst_module_get_from_id (int ,int) ;

void sst_hsw_init_module_state(struct sst_hsw *hsw)
{
 struct sst_module *module;
 enum sst_hsw_module_id id;


 for (id = SST_HSW_MODULE_BASE_FW; id < SST_HSW_MAX_MODULE_ID; id++) {
  module = sst_module_get_from_id(hsw->dsp, id);
  if (module) {

   if (id == SST_HSW_MODULE_WAVES)
    module->state = SST_MODULE_STATE_INITIALIZED;
   else
    module->state = SST_MODULE_STATE_ACTIVE;
  }
 }
}
