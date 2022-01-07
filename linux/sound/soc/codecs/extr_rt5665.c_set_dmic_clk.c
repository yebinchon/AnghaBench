
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5665_priv {int sysclk; int regmap; } ;


 int RT5665_ADDA_CLK_1 ;
 int RT5665_DMIC_CLK_MASK ;
 int RT5665_DMIC_CLK_SFT ;
 int RT5665_DMIC_CTRL_1 ;
 int RT5665_I2S_PD1_SFT ;
 int dev_err (int ,char*) ;
 int rl6231_calc_dmic_clk (int) ;
 int rl6231_get_pre_div (int ,int ,int ) ;
 struct rt5665_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int set_dmic_clk(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5665_priv *rt5665 = snd_soc_component_get_drvdata(component);
 int pd, idx;

 pd = rl6231_get_pre_div(rt5665->regmap,
  RT5665_ADDA_CLK_1, RT5665_I2S_PD1_SFT);
 idx = rl6231_calc_dmic_clk(rt5665->sysclk / pd);

 if (idx < 0)
  dev_err(component->dev, "Failed to set DMIC clock\n");
 else {
  snd_soc_component_update_bits(component, RT5665_DMIC_CTRL_1,
   RT5665_DMIC_CLK_MASK, idx << RT5665_DMIC_CLK_SFT);
 }
 return idx;
}
