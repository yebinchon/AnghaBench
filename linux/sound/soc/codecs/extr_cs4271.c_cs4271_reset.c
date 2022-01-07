
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs4271_private {int gpio_nreset; } ;


 int gpio_direction_output (int ,int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 struct cs4271_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs4271_reset(struct snd_soc_component *component)
{
 struct cs4271_private *cs4271 = snd_soc_component_get_drvdata(component);

 if (gpio_is_valid(cs4271->gpio_nreset)) {
  gpio_direction_output(cs4271->gpio_nreset, 0);
  mdelay(1);
  gpio_set_value(cs4271->gpio_nreset, 1);
  mdelay(1);
 }

 return 0;
}
