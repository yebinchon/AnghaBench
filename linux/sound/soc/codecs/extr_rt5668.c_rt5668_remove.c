
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5668_priv {int regmap; } ;


 int rt5668_reset (int ) ;
 struct rt5668_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5668_remove(struct snd_soc_component *component)
{
 struct rt5668_priv *rt5668 = snd_soc_component_get_drvdata(component);

 rt5668_reset(rt5668->regmap);
}
