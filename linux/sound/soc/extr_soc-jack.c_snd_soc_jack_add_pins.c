
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack_pin {int mask; int pin; int list; } ;
struct snd_soc_jack {int jack; int pins; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int ,char*,int,...) ;
 int list_add (int *,int *) ;
 int snd_jack_add_new_kctl (int ,int ,int ) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int ,int ) ;

int snd_soc_jack_add_pins(struct snd_soc_jack *jack, int count,
     struct snd_soc_jack_pin *pins)
{
 int i;

 for (i = 0; i < count; i++) {
  if (!pins[i].pin) {
   dev_err(jack->card->dev, "ASoC: No name for pin %d\n",
    i);
   return -EINVAL;
  }
  if (!pins[i].mask) {
   dev_err(jack->card->dev, "ASoC: No mask for pin %d"
    " (%s)\n", i, pins[i].pin);
   return -EINVAL;
  }

  INIT_LIST_HEAD(&pins[i].list);
  list_add(&(pins[i].list), &jack->pins);
  snd_jack_add_new_kctl(jack->jack, pins[i].pin, pins[i].mask);
 }





 snd_soc_jack_report(jack, 0, 0);

 return 0;
}
