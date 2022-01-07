
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8580_DAC_CONTROL5 ;
 unsigned int WM8580_DAC_CONTROL5_MUTEALL ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int wm8580_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 unsigned int reg;

 reg = snd_soc_component_read32(component, WM8580_DAC_CONTROL5);

 if (mute)
  reg |= WM8580_DAC_CONTROL5_MUTEALL;
 else
  reg &= ~WM8580_DAC_CONTROL5_MUTEALL;

 snd_soc_component_write(component, WM8580_DAC_CONTROL5, reg);

 return 0;
}
