
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau1977 {int enabled; scalar_t__ dvdd_reg; scalar_t__ avdd_reg; int regmap; int reset_gpio; } ;


 int ADAU1977_POWER_PWUP ;
 int ADAU1977_REG_POWER ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int adau1977_power_disable(struct adau1977 *adau1977)
{
 int ret = 0;

 if (!adau1977->enabled)
  return 0;

 ret = regmap_update_bits(adau1977->regmap, ADAU1977_REG_POWER,
  ADAU1977_POWER_PWUP, 0);
 if (ret)
  return ret;

 regcache_mark_dirty(adau1977->regmap);

 gpiod_set_value_cansleep(adau1977->reset_gpio, 0);

 regcache_cache_only(adau1977->regmap, 1);

 regulator_disable(adau1977->avdd_reg);
 if (adau1977->dvdd_reg)
  regulator_disable(adau1977->dvdd_reg);

 adau1977->enabled = 0;

 return 0;
}
