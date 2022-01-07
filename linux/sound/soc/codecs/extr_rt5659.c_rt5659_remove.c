
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5659_priv {int regmap; } ;


 int RT5659_RESET ;
 int regmap_write (int ,int ,int ) ;
 struct rt5659_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5659_remove(struct snd_soc_component *component)
{
 struct rt5659_priv *rt5659 = snd_soc_component_get_drvdata(component);

 regmap_write(rt5659->regmap, RT5659_RESET, 0);
}
