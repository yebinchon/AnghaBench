
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt1011_priv {scalar_t__ sysclk_src; } ;


 scalar_t__ RT1011_FS_SYS_PRE_S_PLL1 ;
 struct rt1011_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt1011_is_sys_clk_from_pll(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(source->dapm);
 struct rt1011_priv *rt1011 = snd_soc_component_get_drvdata(component);

 if (rt1011->sysclk_src == RT1011_FS_SYS_PRE_S_PLL1)
  return 1;
 else
  return 0;
}
