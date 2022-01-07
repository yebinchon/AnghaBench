
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7219_aad_adc_1bit_rpt { ____Placeholder_da7219_aad_adc_1bit_rpt } da7219_aad_adc_1bit_rpt ;


 int DA7219_AAD_ADC_1BIT_RPT_1 ;
 int DA7219_AAD_ADC_1BIT_RPT_2 ;
 int DA7219_AAD_ADC_1BIT_RPT_4 ;
 int DA7219_AAD_ADC_1BIT_RPT_8 ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7219_aad_adc_1bit_rpt
 da7219_aad_fw_adc_1bit_rpt(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 1:
  return DA7219_AAD_ADC_1BIT_RPT_1;
 case 2:
  return DA7219_AAD_ADC_1BIT_RPT_2;
 case 4:
  return DA7219_AAD_ADC_1BIT_RPT_4;
 case 8:
  return DA7219_AAD_ADC_1BIT_RPT_8;
 default:
  dev_warn(component->dev, "Invalid ADC 1-bit repeat value");
  return DA7219_AAD_ADC_1BIT_RPT_1;
 }
}
