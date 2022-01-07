
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1701 {int supplies; int gpio_nreset; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void adau1701_remove(struct snd_soc_component *component)
{
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);

 if (gpio_is_valid(adau1701->gpio_nreset))
  gpio_set_value_cansleep(adau1701->gpio_nreset, 0);

 regulator_bulk_disable(ARRAY_SIZE(adau1701->supplies), adau1701->supplies);
}
