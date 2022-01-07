
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {scalar_t__ regmap; } ;


 int regmap_update_bits_check (scalar_t__,unsigned int,unsigned int,unsigned int,int*) ;
 int snd_soc_component_update_bits_legacy (struct snd_soc_component*,unsigned int,unsigned int,unsigned int,int*) ;

int snd_soc_component_update_bits(struct snd_soc_component *component,
 unsigned int reg, unsigned int mask, unsigned int val)
{
 bool change;
 int ret;

 if (component->regmap)
  ret = regmap_update_bits_check(component->regmap, reg, mask,
   val, &change);
 else
  ret = snd_soc_component_update_bits_legacy(component, reg,
   mask, val, &change);

 if (ret < 0)
  return ret;
 return change;
}
