
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; struct hoontech_spec* spec; } ;
struct hoontech_spec {int * boxbits; } ;


 int ICE1712_STDSP24_3_MIDI2 (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ice1712_stdsp24_gpio_write (struct snd_ice1712*,int ) ;

__attribute__((used)) static void snd_ice1712_stdsp24_midi2(struct snd_ice1712 *ice, int activate)
{
 struct hoontech_spec *spec = ice->spec;
 mutex_lock(&ice->gpio_mutex);
 ICE1712_STDSP24_3_MIDI2(spec->boxbits, activate);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[3]);
 mutex_unlock(&ice->gpio_mutex);
}
