
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt5514_priv {int sysclk; int lrck; } ;


 struct rt5514_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5514_i2s_use_asrc(struct snd_soc_dapm_widget *source,
 struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct rt5514_priv *rt5514 = snd_soc_component_get_drvdata(component);

 return (rt5514->sysclk > rt5514->lrck * 384);
}
