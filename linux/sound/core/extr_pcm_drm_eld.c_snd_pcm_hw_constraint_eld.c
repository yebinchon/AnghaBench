
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int eld_limit_channels ;
 int eld_limit_rates ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,void*,int ,int) ;

int snd_pcm_hw_constraint_eld(struct snd_pcm_runtime *runtime, void *eld)
{
 int ret;

 ret = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
      eld_limit_rates, eld,
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (ret < 0)
  return ret;

 ret = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
      eld_limit_channels, eld,
      SNDRV_PCM_HW_PARAM_RATE, -1);

 return ret;
}
