
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct arizona_priv {int sysclk; int asyncclk; } ;




 int ARIZONA_OPCLK_DIV_MASK ;
 int ARIZONA_OPCLK_DIV_SHIFT ;
 int ARIZONA_OPCLK_SEL_MASK ;
 unsigned int ARIZONA_OUTPUT_ASYNC_CLOCK ;
 unsigned int ARIZONA_OUTPUT_SYSTEM_CLOCK ;
 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 unsigned int* arizona_opclk_ref_44k1_rates ;
 unsigned int* arizona_opclk_ref_48k_rates ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,int) ;

__attribute__((used)) static int arizona_set_opclk(struct snd_soc_component *component,
        unsigned int clk, unsigned int freq)
{
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg;
 unsigned int *rates;
 int ref, div, refclk;

 switch (clk) {
 case 128:
  reg = ARIZONA_OUTPUT_SYSTEM_CLOCK;
  refclk = priv->sysclk;
  break;
 case 129:
  reg = ARIZONA_OUTPUT_ASYNC_CLOCK;
  refclk = priv->asyncclk;
  break;
 default:
  return -EINVAL;
 }

 if (refclk % 8000)
  rates = arizona_opclk_ref_44k1_rates;
 else
  rates = arizona_opclk_ref_48k_rates;

 for (ref = 0; ref < ARRAY_SIZE(arizona_opclk_ref_48k_rates) &&
      rates[ref] <= refclk; ref++) {
  div = 1;
  while (rates[ref] / div >= freq && div < 32) {
   if (rates[ref] / div == freq) {
    dev_dbg(component->dev, "Configured %dHz OPCLK\n",
     freq);
    snd_soc_component_update_bits(component, reg,
          ARIZONA_OPCLK_DIV_MASK |
          ARIZONA_OPCLK_SEL_MASK,
          (div <<
           ARIZONA_OPCLK_DIV_SHIFT) |
          ref);
    return 0;
   }
   div++;
  }
 }

 dev_err(component->dev, "Unable to generate %dHz OPCLK\n", freq);
 return -EINVAL;
}
