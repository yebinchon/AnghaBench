
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8711_APDIGI ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8711_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u16 mute_reg = snd_soc_component_read32(component, WM8711_APDIGI) & 0xfff7;

 if (mute)
  snd_soc_component_write(component, WM8711_APDIGI, mute_reg | 0x8);
 else
  snd_soc_component_write(component, WM8711_APDIGI, mute_reg);

 return 0;
}
