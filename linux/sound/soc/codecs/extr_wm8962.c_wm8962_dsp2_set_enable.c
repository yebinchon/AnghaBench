
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int WM8962_ADC_DAC_CONTROL_1 ;
 int WM8962_ADC_VU ;
 int WM8962_DAC_MUTE ;
 int WM8962_LEFT_ADC_VOLUME ;
 int WM8962_RIGHT_ADC_VOLUME ;
 int WM8962_SOUNDSTAGE_ENABLES_0 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8962_dsp2_set_enable(struct snd_soc_component *component, u16 val)
{
 u16 adcl = snd_soc_component_read32(component, WM8962_LEFT_ADC_VOLUME);
 u16 adcr = snd_soc_component_read32(component, WM8962_RIGHT_ADC_VOLUME);
 u16 dac = snd_soc_component_read32(component, WM8962_ADC_DAC_CONTROL_1);


 snd_soc_component_write(component, WM8962_LEFT_ADC_VOLUME, 0);
 snd_soc_component_write(component, WM8962_RIGHT_ADC_VOLUME, WM8962_ADC_VU);
 snd_soc_component_update_bits(component, WM8962_ADC_DAC_CONTROL_1,
       WM8962_DAC_MUTE, WM8962_DAC_MUTE);

 snd_soc_component_write(component, WM8962_SOUNDSTAGE_ENABLES_0, val);


 snd_soc_component_write(component, WM8962_LEFT_ADC_VOLUME, adcl);
 snd_soc_component_write(component, WM8962_RIGHT_ADC_VOLUME, adcr);
 snd_soc_component_update_bits(component, WM8962_ADC_DAC_CONTROL_1,
       WM8962_DAC_MUTE, dac);

 return 0;
}
