
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {char* name; int report; int debounce_time; int wake; int jack_status_check; struct rt5670_priv* data; int gpiod_dev; } ;
struct rt5670_priv {TYPE_1__ hp_gpio; struct snd_soc_jack* jack; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*) ;
 int rt5670_irq_detection ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_add_gpios (struct snd_soc_jack*,int,TYPE_1__*) ;

int rt5670_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *jack)
{
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);
 int ret;

 rt5670->jack = jack;
 rt5670->hp_gpio.gpiod_dev = component->dev;
 rt5670->hp_gpio.name = "headset";
 rt5670->hp_gpio.report = SND_JACK_HEADSET |
  SND_JACK_BTN_0 | SND_JACK_BTN_1 | SND_JACK_BTN_2;
 rt5670->hp_gpio.debounce_time = 150;
 rt5670->hp_gpio.wake = 1;
 rt5670->hp_gpio.data = (struct rt5670_priv *)rt5670;
 rt5670->hp_gpio.jack_status_check = rt5670_irq_detection;

 ret = snd_soc_jack_add_gpios(rt5670->jack, 1,
   &rt5670->hp_gpio);
 if (ret) {
  dev_err(component->dev, "Adding jack GPIO failed\n");
  return ret;
 }

 return 0;
}
