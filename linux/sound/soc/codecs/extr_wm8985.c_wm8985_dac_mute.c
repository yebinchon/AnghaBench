
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8985_DAC_CONTROL ;
 int WM8985_SOFTMUTE_MASK ;
 int WM8985_SOFTMUTE_SHIFT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8985_dac_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 return snd_soc_component_update_bits(component, WM8985_DAC_CONTROL,
       WM8985_SOFTMUTE_MASK,
       !!mute << WM8985_SOFTMUTE_SHIFT);
}
