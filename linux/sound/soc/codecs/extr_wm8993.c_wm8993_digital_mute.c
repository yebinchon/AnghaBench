
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8993_DAC_CTRL ;
 unsigned int WM8993_DAC_MUTE ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int wm8993_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 unsigned int reg;

 reg = snd_soc_component_read32(component, WM8993_DAC_CTRL);

 if (mute)
  reg |= WM8993_DAC_MUTE;
 else
  reg &= ~WM8993_DAC_MUTE;

 snd_soc_component_write(component, WM8993_DAC_CTRL, reg);

 return 0;
}
