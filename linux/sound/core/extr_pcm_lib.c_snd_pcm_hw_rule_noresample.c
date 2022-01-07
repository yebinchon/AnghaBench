
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAMS_NORESAMPLE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,void*,int ,int) ;
 int snd_pcm_hw_rule_noresample_func ;

int snd_pcm_hw_rule_noresample(struct snd_pcm_runtime *runtime,
          unsigned int base_rate)
{
 return snd_pcm_hw_rule_add(runtime, SNDRV_PCM_HW_PARAMS_NORESAMPLE,
       SNDRV_PCM_HW_PARAM_RATE,
       snd_pcm_hw_rule_noresample_func,
       (void *)(uintptr_t)base_rate,
       SNDRV_PCM_HW_PARAM_RATE, -1);
}
