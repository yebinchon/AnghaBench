
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {struct device* dev; } ;
struct device {int of_node; } ;
struct TYPE_3__ {int gpio; char* name; int report; int invert; int debounce_time; } ;
struct TYPE_4__ {char* pin; int mask; } ;
struct asoc_simple_jack {TYPE_1__ gpio; int jack; TYPE_2__ pin; } ;
typedef int prop ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int ENOENT ;
 int EPROBE_DEFER ;
 int OF_GPIO_ACTIVE_LOW ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 scalar_t__ gpio_is_valid (int) ;
 int of_get_named_gpio_flags (int ,char*,int ,int*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,TYPE_2__*,int) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_1__*) ;
 int snprintf (char*,int,char*,char*) ;

int asoc_simple_init_jack(struct snd_soc_card *card,
     struct asoc_simple_jack *sjack,
     int is_hp, char *prefix)
{
 struct device *dev = card->dev;
 enum of_gpio_flags flags;
 char prop[128];
 char *pin_name;
 char *gpio_name;
 int mask;
 int det;

 if (!prefix)
  prefix = "";

 sjack->gpio.gpio = -ENOENT;

 if (is_hp) {
  snprintf(prop, sizeof(prop), "%shp-det-gpio", prefix);
  pin_name = "Headphones";
  gpio_name = "Headphone detection";
  mask = SND_JACK_HEADPHONE;
 } else {
  snprintf(prop, sizeof(prop), "%smic-det-gpio", prefix);
  pin_name = "Mic Jack";
  gpio_name = "Mic detection";
  mask = SND_JACK_MICROPHONE;
 }

 det = of_get_named_gpio_flags(dev->of_node, prop, 0, &flags);
 if (det == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 if (gpio_is_valid(det)) {
  sjack->pin.pin = pin_name;
  sjack->pin.mask = mask;

  sjack->gpio.name = gpio_name;
  sjack->gpio.report = mask;
  sjack->gpio.gpio = det;
  sjack->gpio.invert = !!(flags & OF_GPIO_ACTIVE_LOW);
  sjack->gpio.debounce_time = 150;

  snd_soc_card_jack_new(card, pin_name, mask,
          &sjack->jack,
          &sjack->pin, 1);

  snd_soc_jack_add_gpios(&sjack->jack, 1,
           &sjack->gpio);
 }

 return 0;
}
