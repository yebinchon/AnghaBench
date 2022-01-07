
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int DA9055_BIAS_EN ;
 int DA9055_REFERENCES ;
 int DA9055_VMID_EN ;




 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int da9055_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_update_bits(component, DA9055_REFERENCES,
         DA9055_VMID_EN | DA9055_BIAS_EN,
         DA9055_VMID_EN | DA9055_BIAS_EN);
  }
  break;
 case 131:

  snd_soc_component_update_bits(component, DA9055_REFERENCES,
        DA9055_VMID_EN | DA9055_BIAS_EN, 0);
  break;
 }
 return 0;
}
