
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int PMVCM ;
 int PW_MGMT1 ;

 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4642_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 128:
  snd_soc_component_write(component, PW_MGMT1, 0x00);
  break;
 default:
  snd_soc_component_update_bits(component, PW_MGMT1, PMVCM, PMVCM);
  break;
 }

 return 0;
}
