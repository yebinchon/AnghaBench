
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ES8328_CHIPPOWER ;
 int ES8328_CONTROL1 ;
 int ES8328_CONTROL1_ENREF ;
 int ES8328_CONTROL1_VMIDSEL_500k ;
 int ES8328_CONTROL1_VMIDSEL_50k ;
 int ES8328_CONTROL1_VMIDSEL_5k ;
 int ES8328_CONTROL1_VMIDSEL_MASK ;
 int ES8328_CONTROL2 ;
 int ES8328_CONTROL2_OVERCURRENT_ON ;
 int ES8328_CONTROL2_THERMAL_SHUTDOWN_ON ;




 int msleep (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int es8328_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_write(component, ES8328_CHIPPOWER, 0);
  snd_soc_component_update_bits(component, ES8328_CONTROL1,
    ES8328_CONTROL1_VMIDSEL_MASK |
    ES8328_CONTROL1_ENREF,
    ES8328_CONTROL1_VMIDSEL_50k |
    ES8328_CONTROL1_ENREF);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, ES8328_CONTROL1,
     ES8328_CONTROL1_VMIDSEL_MASK |
     ES8328_CONTROL1_ENREF,
     ES8328_CONTROL1_VMIDSEL_5k |
     ES8328_CONTROL1_ENREF);


   msleep(100);
  }

  snd_soc_component_write(component, ES8328_CONTROL2,
    ES8328_CONTROL2_OVERCURRENT_ON |
    ES8328_CONTROL2_THERMAL_SHUTDOWN_ON);


  snd_soc_component_update_bits(component, ES8328_CONTROL1,
    ES8328_CONTROL1_VMIDSEL_MASK |
    ES8328_CONTROL1_ENREF,
    ES8328_CONTROL1_VMIDSEL_500k |
    ES8328_CONTROL1_ENREF);
  break;

 case 131:
  snd_soc_component_update_bits(component, ES8328_CONTROL1,
    ES8328_CONTROL1_VMIDSEL_MASK |
    ES8328_CONTROL1_ENREF,
    0);
  break;
 }
 return 0;
}
