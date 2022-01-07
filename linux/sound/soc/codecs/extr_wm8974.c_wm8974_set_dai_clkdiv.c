
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 int WM8974_CLOCK ;
 int WM8974_GPIO ;


 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8974_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 reg;

 switch (div_id) {
 case 128:
  reg = snd_soc_component_read32(component, WM8974_GPIO) & 0x1cf;
  snd_soc_component_write(component, WM8974_GPIO, reg | div);
  break;
 case 129:
  reg = snd_soc_component_read32(component, WM8974_CLOCK) & 0x11f;
  snd_soc_component_write(component, WM8974_CLOCK, reg | div);
  break;
 case 130:
  reg = snd_soc_component_read32(component, WM8974_CLOCK) & 0x1e3;
  snd_soc_component_write(component, WM8974_CLOCK, reg | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
