
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int val_bytes; int regmap; } ;


 int regmap_get_val_bytes (int ) ;

__attribute__((used)) static void snd_soc_component_setup_regmap(struct snd_soc_component *component)
{
 int val_bytes = regmap_get_val_bytes(component->regmap);


 if (val_bytes > 0)
  component->val_bytes = val_bytes;
}
