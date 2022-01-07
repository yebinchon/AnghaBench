
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5663_priv {int regmap; } ;


 int RT5663_RESET ;
 int regmap_write (int ,int ,int ) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5663_remove(struct snd_soc_component *component)
{
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 regmap_write(rt5663->regmap, RT5663_RESET, 0);
}
