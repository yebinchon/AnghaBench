
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pvt_id; scalar_t__ instance_id; scalar_t__ module_id; } ;
struct skl_module_pin {int in_use; int * tgt_mcfg; int pin_state; TYPE_1__ id; scalar_t__ is_dynamic; } ;


 int SKL_PIN_UNBIND ;

__attribute__((used)) static void skl_free_queue(struct skl_module_pin *mpin, int q_index)
{
 if (mpin[q_index].is_dynamic) {
  mpin[q_index].in_use = 0;
  mpin[q_index].id.module_id = 0;
  mpin[q_index].id.instance_id = 0;
  mpin[q_index].id.pvt_id = 0;
 }
 mpin[q_index].pin_state = SKL_PIN_UNBIND;
 mpin[q_index].tgt_mcfg = ((void*)0);
}
