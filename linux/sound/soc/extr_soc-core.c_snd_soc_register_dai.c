
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct snd_soc_dai_driver {TYPE_1__ dobj; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ SND_SOC_DOBJ_PCM ;
 int client_mutex ;
 int dev_err (int ,char*,int) ;
 int lockdep_assert_held (int *) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_new_dai_widgets (struct snd_soc_dapm_context*,struct snd_soc_dai*) ;
 struct snd_soc_dai* soc_add_dai (struct snd_soc_component*,struct snd_soc_dai_driver*,int) ;

int snd_soc_register_dai(struct snd_soc_component *component,
 struct snd_soc_dai_driver *dai_drv)
{
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(component);
 struct snd_soc_dai *dai;
 int ret;

 if (dai_drv->dobj.type != SND_SOC_DOBJ_PCM) {
  dev_err(component->dev, "Invalid dai type %d\n",
   dai_drv->dobj.type);
  return -EINVAL;
 }

 lockdep_assert_held(&client_mutex);
 dai = soc_add_dai(component, dai_drv, 0);
 if (!dai)
  return -ENOMEM;





 ret = snd_soc_dapm_new_dai_widgets(dapm, dai);
 if (ret != 0) {
  dev_err(component->dev,
   "Failed to create DAI widgets %d\n", ret);
 }

 return ret;
}
