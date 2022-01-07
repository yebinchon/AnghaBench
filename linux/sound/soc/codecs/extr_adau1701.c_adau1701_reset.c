
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct adau1701 {unsigned int pll_clkdiv; int regmap; int sigmadsp; int gpio_nreset; int * gpio_pll_mode; } ;


 int ADAU1701_DACSET ;
 int ADAU1701_DACSET_DACINIT ;
 int ADAU1701_DSPCTRL ;
 int ADAU1701_DSPCTRL_CR ;
 unsigned int ADAU1707_CLKDIV_UNSET ;
 int dev_warn (int ,char*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int mdelay (int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_write (int ,int ,int ) ;
 int sigmadsp_reset (int ) ;
 int sigmadsp_setup (int ,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int udelay (int) ;

__attribute__((used)) static int adau1701_reset(struct snd_soc_component *component, unsigned int clkdiv,
 unsigned int rate)
{
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);
 int ret;

 sigmadsp_reset(adau1701->sigmadsp);

 if (clkdiv != ADAU1707_CLKDIV_UNSET &&
     gpio_is_valid(adau1701->gpio_pll_mode[0]) &&
     gpio_is_valid(adau1701->gpio_pll_mode[1])) {
  switch (clkdiv) {
  case 64:
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[0], 0);
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[1], 0);
   break;
  case 256:
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[0], 0);
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[1], 1);
   break;
  case 384:
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[0], 1);
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[1], 0);
   break;
  case 0:
  case 512:
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[0], 1);
   gpio_set_value_cansleep(adau1701->gpio_pll_mode[1], 1);
   break;
  }
 }

 adau1701->pll_clkdiv = clkdiv;

 if (gpio_is_valid(adau1701->gpio_nreset)) {
  gpio_set_value_cansleep(adau1701->gpio_nreset, 0);

  udelay(1);
  gpio_set_value_cansleep(adau1701->gpio_nreset, 1);

  mdelay(85);
 }





 if (clkdiv != ADAU1707_CLKDIV_UNSET) {
  ret = sigmadsp_setup(adau1701->sigmadsp, rate);
  if (ret) {
   dev_warn(component->dev, "Failed to load firmware\n");
   return ret;
  }
 }

 regmap_write(adau1701->regmap, ADAU1701_DACSET, ADAU1701_DACSET_DACINIT);
 regmap_write(adau1701->regmap, ADAU1701_DSPCTRL, ADAU1701_DSPCTRL_CR);

 regcache_mark_dirty(adau1701->regmap);
 regcache_sync(adau1701->regmap);

 return 0;
}
