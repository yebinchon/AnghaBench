
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2518 {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct ssm2518* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int ssm2518_set_power (struct ssm2518*,int) ;

__attribute__((used)) static int ssm2518_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct ssm2518 *ssm2518 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   ret = ssm2518_set_power(ssm2518, 1);
  break;
 case 131:
  ret = ssm2518_set_power(ssm2518, 0);
  break;
 }

 return ret;
}
