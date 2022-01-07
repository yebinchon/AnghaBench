
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_module {int node; struct snd_kcontrol* kctl; } ;
struct sst_ids {int algo_list; int gain_list; } ;
struct sst_gain_mixer_control {struct snd_soc_dapm_widget* w; } ;
struct sst_algo_control {struct snd_soc_dapm_widget* w; } ;
struct snd_soc_dapm_widget {struct sst_ids* priv; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SST_MODULE_ALGO ;
 int SST_MODULE_GAIN ;
 int dev_err (int ,char*,int,int ) ;
 struct sst_module* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int sst_fill_module_list(struct snd_kcontrol *kctl,
  struct snd_soc_dapm_widget *w, int type)
{
 struct sst_module *module = ((void*)0);
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct sst_ids *ids = w->priv;
 int ret = 0;

 module = devm_kzalloc(c->dev, sizeof(*module), GFP_KERNEL);
 if (!module)
  return -ENOMEM;

 if (type == SST_MODULE_GAIN) {
  struct sst_gain_mixer_control *mc = (void *)kctl->private_value;

  mc->w = w;
  module->kctl = kctl;
  list_add_tail(&module->node, &ids->gain_list);
 } else if (type == SST_MODULE_ALGO) {
  struct sst_algo_control *bc = (void *)kctl->private_value;

  bc->w = w;
  module->kctl = kctl;
  list_add_tail(&module->node, &ids->algo_list);
 } else {
  dev_err(c->dev, "invoked for unknown type %d module %s",
    type, kctl->id.name);
  ret = -EINVAL;
 }

 return ret;
}
