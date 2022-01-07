
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instance_id; int module_id; } ;
struct skl_module_pin {int in_use; int is_dynamic; int pin_state; TYPE_1__ id; } ;
struct skl_dfw_v4_module_pin {int instance_id; int module_id; } ;


 int SKL_PIN_UNBIND ;

__attribute__((used)) static void skl_fill_module_pin_info_v4(struct skl_dfw_v4_module_pin *dfw_pin,
     struct skl_module_pin *m_pin,
     bool is_dynamic, int max_pin)
{
 int i;

 for (i = 0; i < max_pin; i++) {
  m_pin[i].id.module_id = dfw_pin[i].module_id;
  m_pin[i].id.instance_id = dfw_pin[i].instance_id;
  m_pin[i].in_use = 0;
  m_pin[i].is_dynamic = is_dynamic;
  m_pin[i].pin_state = SKL_PIN_UNBIND;
 }
}
