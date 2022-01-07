
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8580_ADC_CONTROL1 ;
 int WM8580_PWRDN1 ;
 int WM8580_PWRDN1_ALLDACPD ;
 int WM8580_PWRDN1_PWDN ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8580_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_update_bits(component, WM8580_PWRDN1,
         WM8580_PWRDN1_PWDN |
         WM8580_PWRDN1_ALLDACPD, 0);


   snd_soc_component_update_bits(component, WM8580_ADC_CONTROL1,
         0x100, 0);
  }
  break;

 case 131:
  snd_soc_component_update_bits(component, WM8580_PWRDN1,
        WM8580_PWRDN1_PWDN, WM8580_PWRDN1_PWDN);
  break;
 }
 return 0;
}
