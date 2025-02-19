
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int WM8728_DACCTL ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8728_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 u16 dac = snd_soc_component_read32(component, WM8728_DACCTL);

 dac &= ~0x18;

 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  dac |= 0x10;
  break;
 case 24:
  dac |= 0x08;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8728_DACCTL, dac);

 return 0;
}
