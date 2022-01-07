
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;






 int WM8900_LRC_MASK ;

 int WM8900_REG_AUDIO3 ;
 int WM8900_REG_AUDIO4 ;
 int WM8900_REG_CLOCKING1 ;
 int WM8900_REG_CLOCKING1_BCLK_MASK ;
 int WM8900_REG_CLOCKING1_OPCLK_MASK ;
 int WM8900_REG_CLOCKING2 ;
 int WM8900_REG_CLOCKING2_ADC_CLKDIV ;
 int WM8900_REG_CLOCKING2_DAC_CLKDIV ;
 int WM8900_REG_DACCTRL ;
 int WM8900_REG_DACCTRL_AIF_LRCLKRATE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8900_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
     int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;

 switch (div_id) {
 case 132:
  snd_soc_component_update_bits(component, WM8900_REG_CLOCKING1,
        WM8900_REG_CLOCKING1_BCLK_MASK, div);
  break;
 case 128:
  snd_soc_component_update_bits(component, WM8900_REG_CLOCKING1,
        WM8900_REG_CLOCKING1_OPCLK_MASK, div);
  break;
 case 130:
  snd_soc_component_update_bits(component, WM8900_REG_AUDIO4,
        WM8900_LRC_MASK, div);
  break;
 case 133:
  snd_soc_component_update_bits(component, WM8900_REG_AUDIO3,
        WM8900_LRC_MASK, div);
  break;
 case 131:
  snd_soc_component_update_bits(component, WM8900_REG_CLOCKING2,
        WM8900_REG_CLOCKING2_DAC_CLKDIV, div);
  break;
 case 134:
  snd_soc_component_update_bits(component, WM8900_REG_CLOCKING2,
        WM8900_REG_CLOCKING2_ADC_CLKDIV, div);
  break;
 case 129:
  snd_soc_component_update_bits(component, WM8900_REG_DACCTRL,
        WM8900_REG_DACCTRL_AIF_LRCLKRATE, div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
