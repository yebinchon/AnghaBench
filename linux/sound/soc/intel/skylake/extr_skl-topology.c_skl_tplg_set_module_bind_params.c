
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ private; } ;
struct soc_bytes_ext {TYPE_4__ dobj; } ;
struct snd_soc_dapm_widget {int num_kcontrols; struct snd_kcontrol_new* kcontrol_news; struct skl_module_cfg* priv; } ;
struct snd_kcontrol_new {int access; scalar_t__ private_value; } ;
struct skl_specific_cfg {scalar_t__ caps_size; scalar_t__ set_params; int param_id; int * caps; } ;
struct skl_module_cfg {struct skl_specific_cfg formats_config; TYPE_3__* m_in_pin; TYPE_2__* module; TYPE_1__* m_out_pin; } ;
struct skl_dev {int dummy; } ;
struct skl_algo_data {scalar_t__ set_params; scalar_t__ max; int param_id; int params; } ;
struct TYPE_7__ {scalar_t__ pin_state; } ;
struct TYPE_6__ {int max_output_pins; int max_input_pins; } ;
struct TYPE_5__ {scalar_t__ pin_state; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SKL_PARAM_BIND ;
 scalar_t__ SKL_PIN_BIND_DONE ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int kfree (int *) ;
 int * kmemdup (int ,scalar_t__,int ) ;
 int skl_fill_sink_instance_id (struct skl_dev*,int *,scalar_t__,struct skl_module_cfg*) ;
 int skl_set_module_params (struct skl_dev*,int *,scalar_t__,int ,struct skl_module_cfg*) ;

__attribute__((used)) static int skl_tplg_set_module_bind_params(struct snd_soc_dapm_widget *w,
   struct skl_module_cfg *mcfg, struct skl_dev *skl)
{
 int i, ret;
 struct skl_module_cfg *mconfig = w->priv;
 const struct snd_kcontrol_new *k;
 struct soc_bytes_ext *sb;
 struct skl_algo_data *bc;
 struct skl_specific_cfg *sp_cfg;
 u32 *params;





 for (i = 0; i < mcfg->module->max_output_pins; i++) {
  if (mcfg->m_out_pin[i].pin_state != SKL_PIN_BIND_DONE)
   return 0;
 }

 for (i = 0; i < mcfg->module->max_input_pins; i++) {
  if (mcfg->m_in_pin[i].pin_state != SKL_PIN_BIND_DONE)
   return 0;
 }

 if (mconfig->formats_config.caps_size > 0 &&
  mconfig->formats_config.set_params == SKL_PARAM_BIND) {
  sp_cfg = &mconfig->formats_config;
  ret = skl_set_module_params(skl, sp_cfg->caps,
     sp_cfg->caps_size,
     sp_cfg->param_id, mconfig);
  if (ret < 0)
   return ret;
 }

 for (i = 0; i < w->num_kcontrols; i++) {
  k = &w->kcontrol_news[i];
  if (k->access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK) {
   sb = (void *) k->private_value;
   bc = (struct skl_algo_data *)sb->dobj.private;

   if (bc->set_params == SKL_PARAM_BIND) {
    params = kmemdup(bc->params, bc->max, GFP_KERNEL);
    if (!params)
     return -ENOMEM;

    skl_fill_sink_instance_id(skl, params, bc->max,
        mconfig);

    ret = skl_set_module_params(skl, params,
      bc->max, bc->param_id, mconfig);
    kfree(params);

    if (ret < 0)
     return ret;
   }
  }
 }

 return 0;
}
