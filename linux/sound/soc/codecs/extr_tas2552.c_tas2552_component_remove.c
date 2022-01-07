
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas2552_data {int enable_gpio; } ;
struct snd_soc_component {int dev; } ;


 int gpiod_set_value (int ,int ) ;
 int pm_runtime_put (int ) ;
 struct tas2552_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void tas2552_component_remove(struct snd_soc_component *component)
{
 struct tas2552_data *tas2552 = snd_soc_component_get_drvdata(component);

 pm_runtime_put(component->dev);

 gpiod_set_value(tas2552->enable_gpio, 0);
}
