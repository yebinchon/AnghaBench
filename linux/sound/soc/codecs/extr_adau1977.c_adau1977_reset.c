
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau1977 {int regmap; } ;


 int ADAU1977_POWER_RESET ;
 int ADAU1977_REG_POWER ;
 int regcache_cache_bypass (int ,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int adau1977_reset(struct adau1977 *adau1977)
{
 int ret;







 regcache_cache_bypass(adau1977->regmap, 1);
 ret = regmap_write(adau1977->regmap, ADAU1977_REG_POWER,
   ADAU1977_POWER_RESET);
 regcache_cache_bypass(adau1977->regmap, 0);
 if (ret)
  return ret;

 return ret;
}
