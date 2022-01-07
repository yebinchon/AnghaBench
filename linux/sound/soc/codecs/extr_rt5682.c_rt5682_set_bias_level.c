
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5682_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5682_DIG_GATE_CTRL ;
 int RT5682_PWR_ANLG_1 ;
 int RT5682_PWR_BG ;
 int RT5682_PWR_DIG_1 ;
 int RT5682_PWR_LDO ;



 int regmap_update_bits (int ,int ,int,int) ;
 struct rt5682_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5682_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5682_priv *rt5682 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 129:
  regmap_update_bits(rt5682->regmap, RT5682_PWR_ANLG_1,
   RT5682_PWR_BG, RT5682_PWR_BG);
  regmap_update_bits(rt5682->regmap, RT5682_PWR_DIG_1,
   RT5682_DIG_GATE_CTRL | RT5682_PWR_LDO,
   RT5682_DIG_GATE_CTRL | RT5682_PWR_LDO);
  break;

 case 128:
  regmap_update_bits(rt5682->regmap, RT5682_PWR_DIG_1,
   RT5682_DIG_GATE_CTRL, RT5682_DIG_GATE_CTRL);
  break;
 case 130:
  regmap_update_bits(rt5682->regmap, RT5682_PWR_DIG_1,
   RT5682_DIG_GATE_CTRL | RT5682_PWR_LDO, 0);
  regmap_update_bits(rt5682->regmap, RT5682_PWR_ANLG_1,
   RT5682_PWR_BG, 0);
  break;

 default:
  break;
 }

 return 0;
}
