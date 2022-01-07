
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;

__attribute__((used)) static int apq8096_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
          struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_CHANNELS);

 rate->min = rate->max = 48000;
 channels->min = channels->max = 2;

 return 0;
}
