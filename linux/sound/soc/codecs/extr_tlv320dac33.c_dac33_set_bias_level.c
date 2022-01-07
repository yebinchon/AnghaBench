
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int dac33_hard_power (struct snd_soc_component*,int) ;
 int dac33_init_chip (struct snd_soc_component*) ;
 int const snd_soc_component_get_bias_level (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_set_bias_level(struct snd_soc_component *component,
    enum snd_soc_bias_level level)
{
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   ret = dac33_hard_power(component, 1);
   if (ret != 0)
    return ret;

   dac33_init_chip(component);
  }
  break;
 case 131:

  if (snd_soc_component_get_bias_level(component) == 131)
   return 0;
  ret = dac33_hard_power(component, 0);
  if (ret != 0)
   return ret;
  break;
 }

 return 0;
}
