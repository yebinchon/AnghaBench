
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_hw_params {int dummy; } ;


 int create_iec958_consumer (int ,int ,int *,size_t) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;

int snd_pcm_create_iec958_consumer_hw_params(struct snd_pcm_hw_params *params,
          u8 *cs, size_t len)
{
 return create_iec958_consumer(params_rate(params), params_width(params),
          cs, len);
}
