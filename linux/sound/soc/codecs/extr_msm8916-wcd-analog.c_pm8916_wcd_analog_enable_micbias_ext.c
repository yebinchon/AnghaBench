
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int CDC_A_MICB_1_EN ;
 int MICB_1_EN_BYP_CAP_MASK ;

 int pm8916_wcd_analog_micbias_enable (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int pm8916_wcd_analog_enable_micbias_ext(struct snd_soc_component
       *component, int event,
       int reg, unsigned int cap_mode)
{
 switch (event) {
 case 128:
  pm8916_wcd_analog_micbias_enable(component);
  snd_soc_component_update_bits(component, CDC_A_MICB_1_EN,
        MICB_1_EN_BYP_CAP_MASK, cap_mode);
  break;
 }

 return 0;
}
