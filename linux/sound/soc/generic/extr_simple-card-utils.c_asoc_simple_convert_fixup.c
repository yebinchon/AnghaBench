
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ max; scalar_t__ min; } ;
struct asoc_simple_data {scalar_t__ convert_channels; scalar_t__ convert_rate; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;

void asoc_simple_convert_fixup(struct asoc_simple_data *data,
          struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
      SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
      SNDRV_PCM_HW_PARAM_CHANNELS);

 if (data->convert_rate)
  rate->min =
  rate->max = data->convert_rate;

 if (data->convert_channels)
  channels->min =
  channels->max = data->convert_channels;
}
