
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8822 {int regmap; } ;


 int SND_SOC_BIAS_OFF ;
 int regcache_mark_dirty (int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct nau8822* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8822_suspend(struct snd_soc_component *component)
{
 struct nau8822 *nau8822 = snd_soc_component_get_drvdata(component);

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);

 regcache_mark_dirty(nau8822->regmap);

 return 0;
}
