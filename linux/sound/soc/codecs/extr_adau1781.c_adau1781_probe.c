
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum adau17x1_type { ____Placeholder_adau17x1_type } adau17x1_type ;



 char* ADAU1381_FIRMWARE ;

 char* ADAU1781_FIRMWARE ;
 int EINVAL ;
 int adau1781_component_driver ;
 int adau1781_dai_driver ;
 int adau17x1_probe (struct device*,struct regmap*,int,void (*) (struct device*),char const*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;

int adau1781_probe(struct device *dev, struct regmap *regmap,
 enum adau17x1_type type, void (*switch_mode)(struct device *dev))
{
 const char *firmware_name;
 int ret;

 switch (type) {
 case 129:
  firmware_name = ADAU1381_FIRMWARE;
  break;
 case 128:
  firmware_name = ADAU1781_FIRMWARE;
  break;
 default:
  return -EINVAL;
 }

 ret = adau17x1_probe(dev, regmap, type, switch_mode, firmware_name);
 if (ret)
  return ret;

 return devm_snd_soc_register_component(dev, &adau1781_component_driver,
  &adau1781_dai_driver, 1);
}
