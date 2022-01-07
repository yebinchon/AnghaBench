
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8741_SOFT_MASK ;
 int WM8741_SOFT_SHIFT ;
 int WM8741_VOLUME_CONTROL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8741_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;

 snd_soc_component_update_bits(component, WM8741_VOLUME_CONTROL,
   WM8741_SOFT_MASK, !!mute << WM8741_SOFT_SHIFT);
 return 0;
}
