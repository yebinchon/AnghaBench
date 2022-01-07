
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int RT5665_GLB_CLK ;
 unsigned int RT5665_SCLK_SRC_MASK ;
 unsigned int RT5665_SCLK_SRC_PLL1 ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_sys_clk_from_pll(struct snd_soc_dapm_widget *w,
    struct snd_soc_dapm_widget *sink)
{
 unsigned int val;
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 val = snd_soc_component_read32(component, RT5665_GLB_CLK);
 val &= RT5665_SCLK_SRC_MASK;
 if (val == RT5665_SCLK_SRC_PLL1)
  return 1;
 else
  return 0;
}
