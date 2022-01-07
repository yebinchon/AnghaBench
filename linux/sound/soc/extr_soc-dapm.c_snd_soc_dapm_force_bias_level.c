
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int bias_level; scalar_t__ component; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int snd_soc_component_set_bias_level (scalar_t__,int) ;

int snd_soc_dapm_force_bias_level(struct snd_soc_dapm_context *dapm,
 enum snd_soc_bias_level level)
{
 int ret = 0;

 if (dapm->component)
  ret = snd_soc_component_set_bias_level(dapm->component, level);

 if (ret == 0)
  dapm->bias_level = level;

 return ret;
}
