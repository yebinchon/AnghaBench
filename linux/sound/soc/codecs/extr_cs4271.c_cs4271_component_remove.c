
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs4271_private {int supplies; int regmap; int gpio_nreset; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int regcache_mark_dirty (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct cs4271_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void cs4271_component_remove(struct snd_soc_component *component)
{
 struct cs4271_private *cs4271 = snd_soc_component_get_drvdata(component);

 if (gpio_is_valid(cs4271->gpio_nreset))

  gpio_set_value(cs4271->gpio_nreset, 0);

 regcache_mark_dirty(cs4271->regmap);
 regulator_bulk_disable(ARRAY_SIZE(cs4271->supplies), cs4271->supplies);
}
