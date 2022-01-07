
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8900_REG_DACCTRL ;
 int WM8900_REG_DACCTRL_MUTE ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8900_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 reg;

 reg = snd_soc_component_read32(component, WM8900_REG_DACCTRL);

 if (mute)
  reg |= WM8900_REG_DACCTRL_MUTE;
 else
  reg &= ~WM8900_REG_DACCTRL_MUTE;

 snd_soc_component_write(component, WM8900_REG_DACCTRL, reg);

 return 0;
}
