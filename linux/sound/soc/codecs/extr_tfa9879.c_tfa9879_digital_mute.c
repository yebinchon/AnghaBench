
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int TFA9879_MISC_CONTROL ;
 int TFA9879_S_MUTE_MASK ;
 int TFA9879_S_MUTE_SHIFT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int tfa9879_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 snd_soc_component_update_bits(component, TFA9879_MISC_CONTROL,
          TFA9879_S_MUTE_MASK,
          !!mute << TFA9879_S_MUTE_SHIFT);

 return 0;
}
