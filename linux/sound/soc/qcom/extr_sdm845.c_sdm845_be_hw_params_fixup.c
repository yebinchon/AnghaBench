
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int DEFAULT_SAMPLE_RATE_48K ;
 int SNDRV_PCM_FORMAT_S16_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_set_format (struct snd_mask*,int ) ;

__attribute__((used)) static int sdm845_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
    struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
     SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_mask *fmt = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);

 rate->min = rate->max = DEFAULT_SAMPLE_RATE_48K;
 channels->min = channels->max = 2;
 snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S16_LE);

 return 0;
}
