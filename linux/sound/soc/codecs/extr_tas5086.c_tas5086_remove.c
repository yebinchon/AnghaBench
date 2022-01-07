
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {int supplies; int gpio_nreset; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct tas5086_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void tas5086_remove(struct snd_soc_component *component)
{
 struct tas5086_private *priv = snd_soc_component_get_drvdata(component);

 if (gpio_is_valid(priv->gpio_nreset))

  gpio_set_value(priv->gpio_nreset, 0);

 regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->supplies);
}
