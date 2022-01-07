
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {scalar_t__ regmap; } ;


 int regmap_async_complete (scalar_t__) ;

void snd_soc_component_async_complete(struct snd_soc_component *component)
{
 if (component->regmap)
  regmap_async_complete(component->regmap);
}
