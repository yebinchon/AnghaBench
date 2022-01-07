
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct adau1701 {int* pin_config; int supplies; int regmap; int pll_clkdiv; int sigmadsp; } ;


 int ADAU1701_PINCONF_0 ;
 int ADAU1701_PINCONF_1 ;
 int ADAU1707_CLKDIV_UNSET ;
 int ARRAY_SIZE (int ) ;
 int adau1701_reset (struct snd_soc_component*,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int sigmadsp_attach (int ,struct snd_soc_component*) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_probe(struct snd_soc_component *component)
{
 int i, ret;
 unsigned int val;
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);

 ret = sigmadsp_attach(adau1701->sigmadsp, component);
 if (ret)
  return ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(adau1701->supplies),
        adau1701->supplies);
 if (ret < 0) {
  dev_err(component->dev, "Failed to enable regulators: %d\n", ret);
  return ret;
 }







 adau1701->pll_clkdiv = ADAU1707_CLKDIV_UNSET;


 ret = adau1701_reset(component, adau1701->pll_clkdiv, 0);
 if (ret < 0)
  goto exit_regulators_disable;


 val = 0;
 for (i = 0; i < 6; i++)
  val |= adau1701->pin_config[i] << (i * 4);

 regmap_write(adau1701->regmap, ADAU1701_PINCONF_0, val);

 val = 0;
 for (i = 0; i < 6; i++)
  val |= adau1701->pin_config[i + 6] << (i * 4);

 regmap_write(adau1701->regmap, ADAU1701_PINCONF_1, val);

 return 0;

exit_regulators_disable:

 regulator_bulk_disable(ARRAY_SIZE(adau1701->supplies), adau1701->supplies);
 return ret;
}
