
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5677_priv {int sysclk; int regmap; } ;


 int RT5677_CLK_TREE_CTRL1 ;
 int RT5677_DMIC_CLK_MASK ;
 int RT5677_DMIC_CLK_SFT ;
 int RT5677_DMIC_CTRL1 ;
 int RT5677_I2S_PD1_SFT ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int rl6231_calc_dmic_clk (int) ;
 int rl6231_get_pre_div (int ,int ,int ) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int set_dmic_clk(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 int idx, rate;

 rate = rt5677->sysclk / rl6231_get_pre_div(rt5677->regmap,
  RT5677_CLK_TREE_CTRL1, RT5677_I2S_PD1_SFT);
 idx = rl6231_calc_dmic_clk(rate);
 if (idx < 0)
  dev_err(component->dev, "Failed to set DMIC clock\n");
 else
  regmap_update_bits(rt5677->regmap, RT5677_DMIC_CTRL1,
   RT5677_DMIC_CLK_MASK, idx << RT5677_DMIC_CLK_SFT);
 return idx;
}
