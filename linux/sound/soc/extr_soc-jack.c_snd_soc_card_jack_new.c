
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack_pin {int dummy; } ;
struct snd_soc_jack {int jack; int notifier; int jack_zones; int pins; struct snd_soc_card* card; int mutex; } ;
struct snd_soc_card {int snd_card; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int snd_jack_new (int ,char const*,int,int *,int,int) ;
 int snd_soc_jack_add_pins (struct snd_soc_jack*,unsigned int,struct snd_soc_jack_pin*) ;

int snd_soc_card_jack_new(struct snd_soc_card *card, const char *id, int type,
 struct snd_soc_jack *jack, struct snd_soc_jack_pin *pins,
 unsigned int num_pins)
{
 int ret;

 mutex_init(&jack->mutex);
 jack->card = card;
 INIT_LIST_HEAD(&jack->pins);
 INIT_LIST_HEAD(&jack->jack_zones);
 BLOCKING_INIT_NOTIFIER_HEAD(&jack->notifier);

 ret = snd_jack_new(card->snd_card, id, type, &jack->jack, 0, 0);
 if (ret)
  return ret;

 if (num_pins)
  return snd_soc_jack_add_pins(jack, num_pins, pins);

 return 0;
}
