
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int jack_detect; int hp_work; } ;


 int GPIO_HP_JACK ;
 int JACK_INTERVAL ;
 int cancel_delayed_work_sync (int *) ;
 int msecs_to_jiffies (int ) ;
 int psc724_set_jack_state (struct snd_ice1712*,int) ;
 int schedule_delayed_work (int *,int ) ;
 int snd_ice1712_gpio_read (struct snd_ice1712*) ;

__attribute__((used)) static void psc724_set_jack_detection(struct snd_ice1712 *ice, bool on)
{
 struct psc724_spec *spec = ice->spec;

 if (spec->jack_detect == on)
  return;

 spec->jack_detect = on;
 if (on) {
  bool hp_connected = snd_ice1712_gpio_read(ice) & GPIO_HP_JACK;
  psc724_set_jack_state(ice, hp_connected);
  schedule_delayed_work(&spec->hp_work,
     msecs_to_jiffies(JACK_INTERVAL));
 } else
  cancel_delayed_work_sync(&spec->hp_work);
}
