
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8960_DACCTL1 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8960_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 if (mute)
  snd_soc_component_update_bits(component, WM8960_DACCTL1, 0x8, 0x8);
 else
  snd_soc_component_update_bits(component, WM8960_DACCTL1, 0x8, 0);
 return 0;
}
