
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

int snd_soc_params_to_bclk(struct snd_pcm_hw_params *params)
{
 int ret;

 ret = snd_soc_params_to_frame_size(params);

 if (ret > 0)
  return ret * params_rate(params);
 else
  return ret;
}
