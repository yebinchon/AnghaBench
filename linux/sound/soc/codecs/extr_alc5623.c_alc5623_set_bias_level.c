
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ALC5623_PWR_ADD2_VREF ;
 int ALC5623_PWR_ADD3_MAIN_BIAS ;
 int ALC5623_PWR_MANAG_ADD1 ;
 int ALC5623_PWR_MANAG_ADD2 ;
 int ALC5623_PWR_MANAG_ADD3 ;




 int enable_power_depop (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int alc5623_set_bias_level(struct snd_soc_component *component,
          enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  enable_power_depop(component);
  break;
 case 129:
  break;
 case 128:

  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD2,
    ALC5623_PWR_ADD2_VREF);
  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD3,
    ALC5623_PWR_ADD3_MAIN_BIAS);
  break;
 case 131:

  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD2, 0);
  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD3, 0);
  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD1, 0);
  break;
 }
 return 0;
}
