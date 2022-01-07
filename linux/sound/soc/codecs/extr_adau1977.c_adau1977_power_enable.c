
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau1977 {int enabled; scalar_t__ avdd_reg; scalar_t__ dvdd_reg; int regmap; int dev; int (* switch_mode ) (int ) ;int reset_gpio; } ;


 int ADAU1977_POWER_PWUP ;
 int ADAU1977_REG_PLL ;
 int ADAU1977_REG_POWER ;
 int adau1977_reset (struct adau1977*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regcache_cache_bypass (int ,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static int adau1977_power_enable(struct adau1977 *adau1977)
{
 unsigned int val;
 int ret = 0;

 if (adau1977->enabled)
  return 0;

 ret = regulator_enable(adau1977->avdd_reg);
 if (ret)
  return ret;

 if (adau1977->dvdd_reg) {
  ret = regulator_enable(adau1977->dvdd_reg);
  if (ret)
   goto err_disable_avdd;
 }

 gpiod_set_value_cansleep(adau1977->reset_gpio, 1);

 regcache_cache_only(adau1977->regmap, 0);

 if (adau1977->switch_mode)
  adau1977->switch_mode(adau1977->dev);

 ret = adau1977_reset(adau1977);
 if (ret)
  goto err_disable_dvdd;

 ret = regmap_update_bits(adau1977->regmap, ADAU1977_REG_POWER,
  ADAU1977_POWER_PWUP, ADAU1977_POWER_PWUP);
 if (ret)
  goto err_disable_dvdd;

 ret = regcache_sync(adau1977->regmap);
 if (ret)
  goto err_disable_dvdd;
 ret = regmap_read(adau1977->regmap, ADAU1977_REG_PLL, &val);
 if (ret)
  goto err_disable_dvdd;

 if (val == 0x41) {
  regcache_cache_bypass(adau1977->regmap, 1);
  ret = regmap_write(adau1977->regmap, ADAU1977_REG_PLL,
   0x41);
  if (ret)
   goto err_disable_dvdd;
  regcache_cache_bypass(adau1977->regmap, 0);
 }

 adau1977->enabled = 1;

 return ret;

err_disable_dvdd:
 if (adau1977->dvdd_reg)
  regulator_disable(adau1977->dvdd_reg);
err_disable_avdd:
  regulator_disable(adau1977->avdd_reg);
 return ret;
}
