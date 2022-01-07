
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5665_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5665_DIG_GATE_CTRL ;
 int RT5665_DIG_MISC ;
 int RT5665_PWR_ANLG_1 ;
 int RT5665_PWR_DIG_1 ;
 int RT5665_PWR_LDO ;
 int RT5665_PWR_MB ;



 int regmap_update_bits (int ,int ,int ,int ) ;
 struct rt5665_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5665_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5665_priv *rt5665 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 129:
  regmap_update_bits(rt5665->regmap, RT5665_DIG_MISC,
   RT5665_DIG_GATE_CTRL, RT5665_DIG_GATE_CTRL);
  break;

 case 128:
  regmap_update_bits(rt5665->regmap, RT5665_PWR_DIG_1,
   RT5665_PWR_LDO, RT5665_PWR_LDO);
  regmap_update_bits(rt5665->regmap, RT5665_PWR_ANLG_1,
   RT5665_PWR_MB, RT5665_PWR_MB);
  regmap_update_bits(rt5665->regmap, RT5665_DIG_MISC,
   RT5665_DIG_GATE_CTRL, 0);
  break;
 case 130:
  regmap_update_bits(rt5665->regmap, RT5665_PWR_DIG_1,
   RT5665_PWR_LDO, 0);
  regmap_update_bits(rt5665->regmap, RT5665_PWR_ANLG_1,
   RT5665_PWR_MB, 0);
  break;

 default:
  break;
 }

 return 0;
}
