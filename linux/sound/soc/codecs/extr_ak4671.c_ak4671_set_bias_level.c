
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AK4671_AD_DA_POWER_MANAGEMENT ;
 int AK4671_PMVCM ;




 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4671_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
 case 129:
 case 128:
  snd_soc_component_update_bits(component, AK4671_AD_DA_POWER_MANAGEMENT,
        AK4671_PMVCM, AK4671_PMVCM);
  break;
 case 131:
  snd_soc_component_write(component, AK4671_AD_DA_POWER_MANAGEMENT, 0x00);
  break;
 }
 return 0;
}
