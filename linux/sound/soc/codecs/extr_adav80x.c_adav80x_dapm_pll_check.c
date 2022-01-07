
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {scalar_t__ pll_src; } ;


 scalar_t__ ADAV80X_PLL_SRC_XTAL ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adav80x_dapm_pll_check(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);

 return adav80x->pll_src == ADAV80X_PLL_SRC_XTAL;
}
