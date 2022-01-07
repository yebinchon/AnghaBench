
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 unsigned char PCM_INF2_18WL ;
 int PM860X_PCM_IFACE_2 ;
 int PM860X_PCM_RATE ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned char) ;

__attribute__((used)) static int pm860x_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 unsigned char inf = 0, mask = 0;


 switch (params_width(params)) {
 case 16:
  inf &= ~PCM_INF2_18WL;
  break;
 case 18:
  inf |= PCM_INF2_18WL;
  break;
 default:
  return -EINVAL;
 }
 mask |= PCM_INF2_18WL;
 snd_soc_component_update_bits(component, PM860X_PCM_IFACE_2, mask, inf);


 switch (params_rate(params)) {
 case 8000:
  inf = 0;
  break;
 case 16000:
  inf = 3;
  break;
 case 32000:
  inf = 6;
  break;
 case 48000:
  inf = 8;
  break;
 default:
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, PM860X_PCM_RATE, 0x0f, inf);

 return 0;
}
