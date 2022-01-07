
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_dapm_widget {struct skl_module_cfg* priv; TYPE_2__* dapm; } ;
struct snd_soc_component {int name; } ;
struct skl_pipe {int state; } ;
struct skl_module_cfg {int m_state; TYPE_5__* m_out_pin; TYPE_4__* module; TYPE_3__* m_in_pin; struct skl_pipe* pipe; } ;
struct TYPE_10__ {int in_use; void* pin_state; } ;
struct TYPE_9__ {int max_input_pins; int max_output_pins; } ;
struct TYPE_8__ {int in_use; void* pin_state; } ;
struct TYPE_7__ {TYPE_1__* component; } ;
struct TYPE_6__ {int name; } ;


 int SKL_MODULE_UNINIT ;
 void* SKL_PIN_UNBIND ;
 int SKL_PIPE_INVALID ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static void skl_clear_pin_config(struct snd_soc_component *component,
    struct snd_soc_dapm_widget *w)
{
 int i;
 struct skl_module_cfg *mconfig;
 struct skl_pipe *pipe;

 if (!strncmp(w->dapm->component->name, component->name,
     strlen(component->name))) {
  mconfig = w->priv;
  pipe = mconfig->pipe;
  for (i = 0; i < mconfig->module->max_input_pins; i++) {
   mconfig->m_in_pin[i].in_use = 0;
   mconfig->m_in_pin[i].pin_state = SKL_PIN_UNBIND;
  }
  for (i = 0; i < mconfig->module->max_output_pins; i++) {
   mconfig->m_out_pin[i].in_use = 0;
   mconfig->m_out_pin[i].pin_state = SKL_PIN_UNBIND;
  }
  pipe->state = SKL_PIPE_INVALID;
  mconfig->m_state = SKL_MODULE_UNINIT;
 }
}
