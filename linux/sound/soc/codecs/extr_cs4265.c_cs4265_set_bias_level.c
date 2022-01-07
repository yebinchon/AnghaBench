
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int CS4265_PWRCTL ;
 int CS4265_PWRCTL_PDN ;




 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs4265_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;
 case 129:
  snd_soc_component_update_bits(component, CS4265_PWRCTL,
   CS4265_PWRCTL_PDN, 0);
  break;
 case 128:
  snd_soc_component_update_bits(component, CS4265_PWRCTL,
   CS4265_PWRCTL_PDN,
   CS4265_PWRCTL_PDN);
  break;
 case 131:
  snd_soc_component_update_bits(component, CS4265_PWRCTL,
   CS4265_PWRCTL_PDN,
   CS4265_PWRCTL_PDN);
  break;
 }
 return 0;
}
