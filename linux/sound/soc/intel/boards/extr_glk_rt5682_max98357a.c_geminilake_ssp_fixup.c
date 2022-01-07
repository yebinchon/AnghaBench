
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int DUAL_CHANNEL ;
 int SNDRV_PCM_FORMAT_S24_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_none (struct snd_mask*) ;
 int snd_mask_set_format (struct snd_mask*,int ) ;

__attribute__((used)) static int geminilake_ssp_fixup(struct snd_soc_pcm_runtime *rtd,
   struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
   SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
   SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_mask *fmt = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);


 rate->min = rate->max = 48000;
 channels->min = channels->max = DUAL_CHANNEL;


 snd_mask_none(fmt);
 snd_mask_set_format(fmt, SNDRV_PCM_FORMAT_S24_LE);

 return 0;
}
