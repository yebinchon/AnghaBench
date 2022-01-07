
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int DA7210_DAC_HPF ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da7210_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u8 mute_reg = snd_soc_component_read32(component, DA7210_DAC_HPF) & 0xFB;

 if (mute)
  snd_soc_component_write(component, DA7210_DAC_HPF, mute_reg | 0x4);
 else
  snd_soc_component_write(component, DA7210_DAC_HPF, mute_reg);
 return 0;
}
