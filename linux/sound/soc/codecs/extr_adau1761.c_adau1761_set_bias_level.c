
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ADAU17X1_CLOCK_CONTROL ;
 int ADAU17X1_CLOCK_CONTROL_SYSCLK_EN ;




 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1761_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct adau *adau = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  regcache_cache_only(adau->regmap, 0);
  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN);
  if (snd_soc_component_get_bias_level(component) == 131)
   regcache_sync(adau->regmap);
  break;
 case 131:
  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, 0);
  regcache_cache_only(adau->regmap, 1);
  break;

 }
 return 0;
}
