
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_ignore_suspend (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int skylake_nau8825_fe_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm;
 struct snd_soc_component *component = rtd->cpu_dai->component;

 dapm = snd_soc_component_get_dapm(component);
 snd_soc_dapm_ignore_suspend(dapm, "Reference Capture");

 return 0;
}
