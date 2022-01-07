
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int regmap; } ;


 int RT5677_GLB_CLK1 ;
 unsigned int RT5677_SCLK_SRC_MASK ;
 unsigned int RT5677_SCLK_SRC_PLL1 ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_sys_clk_from_pll(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int val;

 regmap_read(rt5677->regmap, RT5677_GLB_CLK1, &val);
 val &= RT5677_SCLK_SRC_MASK;
 if (val == RT5677_SCLK_SRC_PLL1)
  return 1;
 else
  return 0;
}
