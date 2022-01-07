
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98088_priv {int regmap; int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;
 int M98088_MBEN ;
 int M98088_REG_4C_PWR_EN_IN ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int max98088_set_bias_level(struct snd_soc_component *component,
                                  enum snd_soc_bias_level level)
{
 struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;

 case 129:







  if (!IS_ERR(max98088->mclk)) {
   if (snd_soc_component_get_bias_level(component) ==
       130)
    clk_disable_unprepare(max98088->mclk);
   else
    clk_prepare_enable(max98088->mclk);
  }
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   regcache_sync(max98088->regmap);

  snd_soc_component_update_bits(component, M98088_REG_4C_PWR_EN_IN,
       M98088_MBEN, M98088_MBEN);
  break;

 case 131:
  snd_soc_component_update_bits(component, M98088_REG_4C_PWR_EN_IN,
        M98088_MBEN, 0);
  regcache_mark_dirty(max98088->regmap);
  break;
 }
 return 0;
}
