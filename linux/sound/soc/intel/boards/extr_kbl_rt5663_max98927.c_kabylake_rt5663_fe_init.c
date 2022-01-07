
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int dev_err (int ,char*,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_ignore_suspend (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int kabylake_rt5663_fe_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct snd_soc_dapm_context *dapm;
 struct snd_soc_component *component = rtd->cpu_dai->component;

 dapm = snd_soc_component_get_dapm(component);
 ret = snd_soc_dapm_ignore_suspend(dapm, "Reference Capture");
 if (ret) {
  dev_err(rtd->dev, "Ref Cap ignore suspend failed %d\n", ret);
  return ret;
 }

 return ret;
}
