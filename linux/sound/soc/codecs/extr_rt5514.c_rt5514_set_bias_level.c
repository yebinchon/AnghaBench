
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5514_priv {int regmap; int i2c_regmap; int dsp_enabled; int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int ) ;
 int SND_SOC_BIAS_OFF ;
 int SND_SOC_BIAS_ON ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int rt5514_i2c_patch ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5514_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5514_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5514_priv *rt5514 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 129:
  if (IS_ERR(rt5514->mclk))
   break;

  if (snd_soc_component_get_bias_level(component) == SND_SOC_BIAS_ON) {
   clk_disable_unprepare(rt5514->mclk);
  } else {
   ret = clk_prepare_enable(rt5514->mclk);
   if (ret)
    return ret;
  }
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == SND_SOC_BIAS_OFF) {





   if (rt5514->dsp_enabled) {
    rt5514->dsp_enabled = 0;
    regmap_multi_reg_write(rt5514->i2c_regmap,
     rt5514_i2c_patch,
     ARRAY_SIZE(rt5514_i2c_patch));
    regcache_mark_dirty(rt5514->regmap);
    regcache_sync(rt5514->regmap);
   }
  }
  break;

 default:
  break;
 }

 return 0;
}
