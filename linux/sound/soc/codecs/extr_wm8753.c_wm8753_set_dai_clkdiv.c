
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 int WM8753_CLOCK ;

 int WM8753_SRATE2 ;

 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8753_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 reg;

 switch (div_id) {
 case 129:
  reg = snd_soc_component_read32(component, WM8753_CLOCK) & 0x003f;
  snd_soc_component_write(component, WM8753_CLOCK, reg | div);
  break;
 case 130:
  reg = snd_soc_component_read32(component, WM8753_SRATE2) & 0x01c7;
  snd_soc_component_write(component, WM8753_SRATE2, reg | div);
  break;
 case 128:
  reg = snd_soc_component_read32(component, WM8753_SRATE2) & 0x003f;
  snd_soc_component_write(component, WM8753_SRATE2, reg | div);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
