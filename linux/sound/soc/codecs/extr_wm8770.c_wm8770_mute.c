
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8770_DACMUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8770_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component;

 component = dai->component;
 return snd_soc_component_update_bits(component, WM8770_DACMUTE, 0x10,
       !!mute << 4);
}
