
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt5514_priv {scalar_t__ sysclk_src; } ;


 scalar_t__ RT5514_SCLK_S_PLL1 ;
 struct rt5514_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5514_is_sys_clk_from_pll(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct rt5514_priv *rt5514 = snd_soc_component_get_drvdata(component);

 if (rt5514->sysclk_src == RT5514_SCLK_S_PLL1)
  return 1;
 else
  return 0;
}
