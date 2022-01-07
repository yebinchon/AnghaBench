
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int RT5631_GLOBAL_CLK_CTRL ;
 unsigned int RT5631_SYSCLK_SOUR_SEL_PLL ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_sysclk1_source(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg;

 reg = snd_soc_component_read32(component, RT5631_GLOBAL_CLK_CTRL);
 return reg & RT5631_SYSCLK_SOUR_SEL_PLL;
}
