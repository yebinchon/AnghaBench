
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int reset_pin; int pow_ldo2; int regmap; } ;


 int RT5677_RESET ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regmap_write (int ,int ,int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5677_remove(struct snd_soc_component *component)
{
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);

 regmap_write(rt5677->regmap, RT5677_RESET, 0x10ec);
 gpiod_set_value_cansleep(rt5677->pow_ldo2, 0);
 gpiod_set_value_cansleep(rt5677->reset_pin, 1);
}
