
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int MC13783_AUDIO_DAC ;
 unsigned int* mc13783_rates ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int mc13783_pcm_hw_params_dac(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 unsigned int rate = params_rate(params);
 int i;

 for (i = 0; i < ARRAY_SIZE(mc13783_rates); i++) {
  if (rate == mc13783_rates[i]) {
   snd_soc_component_update_bits(component, MC13783_AUDIO_DAC,
     0xf << 17, i << 17);
   return 0;
  }
 }

 return -EINVAL;
}
