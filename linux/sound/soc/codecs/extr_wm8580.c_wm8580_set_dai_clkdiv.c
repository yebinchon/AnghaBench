
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;







 int WM8580_PLLB4 ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_MASK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_OSCCLK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_PLLACLK ;
 unsigned int WM8580_PLLB4_CLKOUTSRC_PLLBCLK ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_MASK ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_OSC ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_PLLA ;
 unsigned int WM8580_PLLB4_MCLKOUTSRC_PLLB ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int wm8580_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
     int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;
 unsigned int reg;

 switch (div_id) {
 case 128:
  reg = snd_soc_component_read32(component, WM8580_PLLB4);
  reg &= ~WM8580_PLLB4_MCLKOUTSRC_MASK;

  switch (div) {
  case 133:

   break;

  case 130:
   reg |= WM8580_PLLB4_MCLKOUTSRC_PLLA;
   break;
  case 129:
   reg |= WM8580_PLLB4_MCLKOUTSRC_PLLB;
   break;

  case 131:
   reg |= WM8580_PLLB4_MCLKOUTSRC_OSC;
   break;

  default:
   return -EINVAL;
  }
  snd_soc_component_write(component, WM8580_PLLB4, reg);
  break;

 case 134:
  reg = snd_soc_component_read32(component, WM8580_PLLB4);
  reg &= ~WM8580_PLLB4_CLKOUTSRC_MASK;

  switch (div) {
  case 132:
   break;

  case 130:
   reg |= WM8580_PLLB4_CLKOUTSRC_PLLACLK;
   break;

  case 129:
   reg |= WM8580_PLLB4_CLKOUTSRC_PLLBCLK;
   break;

  case 131:
   reg |= WM8580_PLLB4_CLKOUTSRC_OSCCLK;
   break;

  default:
   return -EINVAL;
  }
  snd_soc_component_write(component, WM8580_PLLB4, reg);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
