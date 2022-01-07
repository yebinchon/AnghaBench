
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8962_ADC_DAC_CONTROL_1 ;
 int WM8962_CLASS_D_CONTROL_1 ;
 int WM8962_DAC_MUTE ;
 int WM8962_DAC_MUTE_ALT ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8962_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 int val, ret;

 if (mute)
  val = WM8962_DAC_MUTE | WM8962_DAC_MUTE_ALT;
 else
  val = 0;





 ret = snd_soc_component_update_bits(component, WM8962_CLASS_D_CONTROL_1,
      WM8962_DAC_MUTE_ALT, val);
 if (ret < 0)
  return ret;

 return snd_soc_component_update_bits(component, WM8962_ADC_DAC_CONTROL_1,
       WM8962_DAC_MUTE, val);
}
