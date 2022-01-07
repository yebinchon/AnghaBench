
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int bias_level; } ;
struct snd_soc_component {int dev; } ;
struct rt5659_priv {int mclk; int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5659_DIG_GATE_CTRL ;
 int RT5659_DIG_MISC ;
 int RT5659_PWR_ANLG_1 ;
 int RT5659_PWR_DIG_1 ;
 int RT5659_PWR_FV1 ;
 int RT5659_PWR_FV2 ;
 int RT5659_PWR_LDO ;
 int RT5659_PWR_MB ;
 int RT5659_PWR_VREF1 ;
 int RT5659_PWR_VREF2 ;



 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5659_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5659_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5659_priv *rt5659 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 129:
  regmap_update_bits(rt5659->regmap, RT5659_DIG_MISC,
   RT5659_DIG_GATE_CTRL, RT5659_DIG_GATE_CTRL);
  regmap_update_bits(rt5659->regmap, RT5659_PWR_DIG_1,
   RT5659_PWR_LDO, RT5659_PWR_LDO);
  regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_1,
   RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2,
   RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2);
  msleep(20);
  regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_1,
   RT5659_PWR_FV1 | RT5659_PWR_FV2,
   RT5659_PWR_FV1 | RT5659_PWR_FV2);
  break;

 case 128:
  if (dapm->bias_level == 130) {
   ret = clk_prepare_enable(rt5659->mclk);
   if (ret) {
    dev_err(component->dev,
     "failed to enable MCLK: %d\n", ret);
    return ret;
   }
  }
  break;

 case 130:
  regmap_update_bits(rt5659->regmap, RT5659_PWR_DIG_1,
   RT5659_PWR_LDO, 0);
  regmap_update_bits(rt5659->regmap, RT5659_PWR_ANLG_1,
   RT5659_PWR_MB | RT5659_PWR_VREF1 | RT5659_PWR_VREF2
   | RT5659_PWR_FV1 | RT5659_PWR_FV2,
   RT5659_PWR_MB | RT5659_PWR_VREF2);
  regmap_update_bits(rt5659->regmap, RT5659_DIG_MISC,
   RT5659_DIG_GATE_CTRL, 0);
  clk_disable_unprepare(rt5659->mclk);
  break;

 default:
  break;
 }

 return 0;
}
