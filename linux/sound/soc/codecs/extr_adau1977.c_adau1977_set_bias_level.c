
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1977 {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int adau1977_power_disable (struct adau1977*) ;
 int adau1977_power_enable (struct adau1977*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct adau1977* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1977_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct adau1977 *adau1977 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   ret = adau1977_power_enable(adau1977);
  break;
 case 131:
  ret = adau1977_power_disable(adau1977);
  break;
 }

 return ret;
}
