
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct madera_priv {int sysclk; int asyncclk; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;


 unsigned int MADERA_OPCLK_DIV_MASK ;
 int MADERA_OPCLK_DIV_SHIFT ;
 unsigned int MADERA_OPCLK_SEL_MASK ;
 unsigned int MADERA_OUTPUT_ASYNC_CLOCK ;
 unsigned int MADERA_OUTPUT_SYSTEM_CLOCK ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int* madera_opclk_ref_44k1_rates ;
 unsigned int* madera_opclk_ref_48k_rates ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int madera_set_opclk(struct snd_soc_component *component,
       unsigned int clk, unsigned int freq)
{
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 unsigned int mask = MADERA_OPCLK_DIV_MASK | MADERA_OPCLK_SEL_MASK;
 unsigned int reg, val;
 const unsigned int *rates;
 int ref, div, refclk;

 BUILD_BUG_ON(ARRAY_SIZE(madera_opclk_ref_48k_rates) !=
       ARRAY_SIZE(madera_opclk_ref_44k1_rates));

 switch (clk) {
 case 128:
  reg = MADERA_OUTPUT_SYSTEM_CLOCK;
  refclk = priv->sysclk;
  break;
 case 129:
  reg = MADERA_OUTPUT_ASYNC_CLOCK;
  refclk = priv->asyncclk;
  break;
 default:
  return -EINVAL;
 }

 if (refclk % 4000)
  rates = madera_opclk_ref_44k1_rates;
 else
  rates = madera_opclk_ref_48k_rates;

 for (ref = 0; ref < ARRAY_SIZE(madera_opclk_ref_48k_rates); ++ref) {
  if (rates[ref] > refclk)
   continue;

  div = 2;
  while ((rates[ref] / div >= freq) && (div <= 30)) {
   if (rates[ref] / div == freq) {
    dev_dbg(component->dev, "Configured %dHz OPCLK\n",
     freq);

    val = (div << MADERA_OPCLK_DIV_SHIFT) | ref;

    snd_soc_component_update_bits(component, reg,
             mask, val);
    return 0;
   }
   div += 2;
  }
 }

 dev_err(component->dev, "Unable to generate %dHz OPCLK\n", freq);

 return -EINVAL;
}
