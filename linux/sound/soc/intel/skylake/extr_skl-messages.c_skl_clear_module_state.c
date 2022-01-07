
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_module_pin {scalar_t__ pin_state; } ;
struct skl_module_cfg {int m_state; } ;


 int SKL_MODULE_INIT_DONE ;
 scalar_t__ SKL_PIN_UNBIND ;

__attribute__((used)) static void skl_clear_module_state(struct skl_module_pin *mpin, int max,
      struct skl_module_cfg *mcfg)
{
 int i;
 bool found = 0;

 for (i = 0; i < max; i++) {
  if (mpin[i].pin_state == SKL_PIN_UNBIND)
   continue;
  found = 1;
  break;
 }

 if (!found)
  mcfg->m_state = SKL_MODULE_INIT_DONE;
 return;
}
