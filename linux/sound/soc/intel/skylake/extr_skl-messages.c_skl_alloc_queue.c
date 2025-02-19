
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ module_id; scalar_t__ instance_id; int pvt_id; } ;
struct skl_module_pin {int in_use; scalar_t__ pin_state; struct skl_module_cfg* tgt_mcfg; TYPE_1__ id; scalar_t__ is_dynamic; } ;
struct skl_module_inst_id {scalar_t__ module_id; scalar_t__ instance_id; int pvt_id; } ;
struct skl_module_cfg {struct skl_module_inst_id id; } ;


 int EINVAL ;
 scalar_t__ SKL_PIN_UNBIND ;

__attribute__((used)) static int skl_alloc_queue(struct skl_module_pin *mpin,
   struct skl_module_cfg *tgt_cfg, int max)
{
 int i;
 struct skl_module_inst_id id = tgt_cfg->id;






 for (i = 0; i < max; i++) {
  if (mpin[i].is_dynamic) {
   if (!mpin[i].in_use &&
    mpin[i].pin_state == SKL_PIN_UNBIND) {

    mpin[i].in_use = 1;
    mpin[i].id.module_id = id.module_id;
    mpin[i].id.instance_id = id.instance_id;
    mpin[i].id.pvt_id = id.pvt_id;
    mpin[i].tgt_mcfg = tgt_cfg;
    return i;
   }
  } else {
   if (mpin[i].id.module_id == id.module_id &&
    mpin[i].id.instance_id == id.instance_id &&
    mpin[i].pin_state == SKL_PIN_UNBIND) {

    mpin[i].tgt_mcfg = tgt_cfg;
    return i;
   }
  }
 }

 return -EINVAL;
}
