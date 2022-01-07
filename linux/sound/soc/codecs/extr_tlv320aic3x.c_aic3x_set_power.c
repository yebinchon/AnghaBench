
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct aic3x_priv {int power; int supplies; int regmap; int gpio_reset; } ;
struct TYPE_2__ {unsigned int def; } ;


 size_t AIC3X_PLL_PROGC_REG ;
 size_t AIC3X_PLL_PROGD_REG ;
 size_t AIC3X_RESET ;
 int ARRAY_SIZE (int ) ;
 unsigned int SOFT_RESET ;
 TYPE_1__* aic3x_reg ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,size_t) ;
 int snd_soc_component_write (struct snd_soc_component*,size_t,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int aic3x_set_power(struct snd_soc_component *component, int power)
{
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);
 unsigned int pll_c, pll_d;
 int ret;

 if (power) {
  ret = regulator_bulk_enable(ARRAY_SIZE(aic3x->supplies),
         aic3x->supplies);
  if (ret)
   goto out;
  aic3x->power = 1;

  if (gpio_is_valid(aic3x->gpio_reset)) {
   udelay(1);
   gpio_set_value(aic3x->gpio_reset, 1);
  }


  regcache_cache_only(aic3x->regmap, 0);
  regcache_sync(aic3x->regmap);





  pll_c = snd_soc_component_read32(component, AIC3X_PLL_PROGC_REG);
  pll_d = snd_soc_component_read32(component, AIC3X_PLL_PROGD_REG);
  if (pll_c == aic3x_reg[AIC3X_PLL_PROGC_REG].def ||
   pll_d == aic3x_reg[AIC3X_PLL_PROGD_REG].def) {
   snd_soc_component_write(component, AIC3X_PLL_PROGC_REG, pll_c);
   snd_soc_component_write(component, AIC3X_PLL_PROGD_REG, pll_d);
  }





  mdelay(50);
 } else {





  snd_soc_component_write(component, AIC3X_RESET, SOFT_RESET);
  regcache_mark_dirty(aic3x->regmap);
  aic3x->power = 0;

  regcache_cache_only(aic3x->regmap, 1);
  ret = regulator_bulk_disable(ARRAY_SIZE(aic3x->supplies),
          aic3x->supplies);
 }
out:
 return ret;
}
