
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum adau17x1_type { ____Placeholder_adau17x1_type } adau17x1_type ;


 int ADAU1361 ;
 char* ADAU1761_FIRMWARE ;
 struct snd_soc_dai_driver adau1361_dai_driver ;
 int adau1761_component_driver ;
 struct snd_soc_dai_driver adau1761_dai_driver ;
 int adau17x1_probe (struct device*,struct regmap*,int,void (*) (struct device*),char const*) ;
 int devm_snd_soc_register_component (struct device*,int *,struct snd_soc_dai_driver*,int) ;
 int regcache_cache_only (struct regmap*,int) ;

int adau1761_probe(struct device *dev, struct regmap *regmap,
 enum adau17x1_type type, void (*switch_mode)(struct device *dev))
{
 struct snd_soc_dai_driver *dai_drv;
 const char *firmware_name;
 int ret;

 if (type == ADAU1361) {
  dai_drv = &adau1361_dai_driver;
  firmware_name = ((void*)0);
 } else {
  dai_drv = &adau1761_dai_driver;
  firmware_name = ADAU1761_FIRMWARE;
 }

 ret = adau17x1_probe(dev, regmap, type, switch_mode, firmware_name);
 if (ret)
  return ret;



 regcache_cache_only(regmap, 1);

 return devm_snd_soc_register_component(dev, &adau1761_component_driver,
            dai_drv, 1);
}
