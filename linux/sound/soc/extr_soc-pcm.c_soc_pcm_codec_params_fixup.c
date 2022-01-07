
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int hweight_long (unsigned int) ;

__attribute__((used)) static void soc_pcm_codec_params_fixup(struct snd_pcm_hw_params *params,
           unsigned int mask)
{
 struct snd_interval *interval;
 int channels = hweight_long(mask);

 interval = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 interval->min = channels;
 interval->max = channels;
}
