
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5670_priv {int hp_gpio; int jack; int regmap; } ;


 int RT5670_RESET ;
 int regmap_write (int ,int ,int ) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_free_gpios (int ,int,int *) ;

__attribute__((used)) static void rt5670_remove(struct snd_soc_component *component)
{
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 regmap_write(rt5670->regmap, RT5670_RESET, 0);
 snd_soc_jack_free_gpios(rt5670->jack, 1, &rt5670->hp_gpio);
}
