
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 int WM8990_ADC_CLKDIV_MASK ;

 int WM8990_BCLK_DIV_MASK ;
 int WM8990_CLOCKING_1 ;
 int WM8990_CLOCKING_2 ;

 int WM8990_DAC_CLKDIV_MASK ;

 int WM8990_MCLK_DIV_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8990_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;

 switch (div_id) {
 case 128:
  snd_soc_component_update_bits(component, WM8990_CLOCKING_2,
        WM8990_MCLK_DIV_MASK, div);
  break;
 case 129:
  snd_soc_component_update_bits(component, WM8990_CLOCKING_2,
        WM8990_DAC_CLKDIV_MASK, div);
  break;
 case 131:
  snd_soc_component_update_bits(component, WM8990_CLOCKING_2,
        WM8990_ADC_CLKDIV_MASK, div);
  break;
 case 130:
  snd_soc_component_update_bits(component, WM8990_CLOCKING_1,
        WM8990_BCLK_DIV_MASK, div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
