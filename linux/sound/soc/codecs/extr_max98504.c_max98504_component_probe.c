
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct max98504_priv {int brownout_threshold; int brownout_attenuation; int brownout_attack_hold; int brownout_timed_hold; int brownout_release_rate; int brownout_enable; int supplies; struct regmap* regmap; } ;


 int MAX98504_NUM_SUPPLIES ;
 int MAX98504_PVDD_BROWNOUT_CONFIG_1 ;
 int MAX98504_PVDD_BROWNOUT_CONFIG_2 ;
 int MAX98504_PVDD_BROWNOUT_CONFIG_3 ;
 int MAX98504_PVDD_BROWNOUT_CONFIG_4 ;
 int MAX98504_PVDD_BROWNOUT_ENABLE ;
 int MAX98504_SOFTWARE_RESET ;
 int msleep (int) ;
 int regmap_write (struct regmap*,int ,int) ;
 int regulator_bulk_enable (int ,int ) ;
 struct max98504_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98504_component_probe(struct snd_soc_component *c)
{
 struct max98504_priv *max98504 = snd_soc_component_get_drvdata(c);
 struct regmap *map = max98504->regmap;
 int ret;

 ret = regulator_bulk_enable(MAX98504_NUM_SUPPLIES, max98504->supplies);
 if (ret < 0)
  return ret;

 regmap_write(map, MAX98504_SOFTWARE_RESET, 0x1);
 msleep(20);

 if (!max98504->brownout_enable)
  return 0;

 regmap_write(map, MAX98504_PVDD_BROWNOUT_ENABLE, 0x1);

 regmap_write(map, MAX98504_PVDD_BROWNOUT_CONFIG_1,
       (max98504->brownout_threshold & 0x1f) << 3 |
       (max98504->brownout_attenuation & 0x3));

 regmap_write(map, MAX98504_PVDD_BROWNOUT_CONFIG_2,
       max98504->brownout_attack_hold & 0xff);

 regmap_write(map, MAX98504_PVDD_BROWNOUT_CONFIG_3,
       max98504->brownout_timed_hold & 0xff);

 regmap_write(map, MAX98504_PVDD_BROWNOUT_CONFIG_4,
       max98504->brownout_release_rate & 0xff);

 return 0;
}
