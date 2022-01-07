
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct lm49453_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int LM49453_CHIP_EN ;
 int LM49453_P0_PMC_SETUP_REG ;
 int LM49453_PMC_SETUP_CHIP_EN ;




 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct lm49453_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int lm49453_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct lm49453_priv *lm49453 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   regcache_sync(lm49453->regmap);

  snd_soc_component_update_bits(component, LM49453_P0_PMC_SETUP_REG,
        LM49453_PMC_SETUP_CHIP_EN, LM49453_CHIP_EN);
  break;

 case 131:
  snd_soc_component_update_bits(component, LM49453_P0_PMC_SETUP_REG,
        LM49453_PMC_SETUP_CHIP_EN, 0);
  break;
 }

 return 0;
}
