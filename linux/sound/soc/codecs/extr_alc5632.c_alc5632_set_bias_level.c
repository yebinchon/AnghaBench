
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ALC5632_PWR_ADD1_MAIN_BIAS ;
 int ALC5632_PWR_ADD2_VREF ;
 int ALC5632_PWR_DOWN_CTRL_STATUS ;
 int ALC5632_PWR_DOWN_CTRL_STATUS_MASK ;
 int ALC5632_PWR_MANAG_ADD1 ;
 int ALC5632_PWR_MANAG_ADD1_MASK ;
 int ALC5632_PWR_MANAG_ADD2 ;
 int ALC5632_PWR_MANAG_ADD2_MASK ;
 int ALC5632_PWR_MANAG_ADD3 ;
 int ALC5632_PWR_MANAG_ADD3_MASK ;
 int ALC5632_PWR_VREF_PR2 ;
 int ALC5632_PWR_VREF_PR3 ;




 int enable_power_depop (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int alc5632_set_bias_level(struct snd_soc_component *component,
          enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  enable_power_depop(component);
  break;
 case 129:
  break;
 case 128:

  snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD1,
    ALC5632_PWR_MANAG_ADD1_MASK,
    ALC5632_PWR_ADD1_MAIN_BIAS);
  snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD2,
    ALC5632_PWR_MANAG_ADD2_MASK,
    ALC5632_PWR_ADD2_VREF);

  snd_soc_component_update_bits(component, ALC5632_PWR_DOWN_CTRL_STATUS,
    ALC5632_PWR_DOWN_CTRL_STATUS_MASK,
    0xffff ^ (ALC5632_PWR_VREF_PR3
    | ALC5632_PWR_VREF_PR2));
  break;
 case 131:

  snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD2,
    ALC5632_PWR_MANAG_ADD2_MASK, 0);
  snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD3,
    ALC5632_PWR_MANAG_ADD3_MASK, 0);
  snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD1,
    ALC5632_PWR_MANAG_ADD1_MASK, 0);
  break;
 }
 return 0;
}
