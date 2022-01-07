
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_width (int ) ;
 int snd_soc_calc_frame_size (int,int ,int) ;

int snd_soc_params_to_frame_size(struct snd_pcm_hw_params *params)
{
 int sample_size;

 sample_size = snd_pcm_format_width(params_format(params));
 if (sample_size < 0)
  return sample_size;

 return snd_soc_calc_frame_size(sample_size, params_channels(params),
           1);
}
