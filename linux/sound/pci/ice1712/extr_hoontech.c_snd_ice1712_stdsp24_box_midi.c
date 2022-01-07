
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; struct hoontech_spec* spec; } ;
struct hoontech_spec {int * boxbits; } ;


 int ICE1712_STDSP24_0_BOX (int *,int) ;
 int ICE1712_STDSP24_2_MIDI1 (int *,int) ;
 int ICE1712_STDSP24_2_MIDIIN (int *,int) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ice1712_stdsp24_gpio_write (struct snd_ice1712*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_ice1712_stdsp24_box_midi(struct snd_ice1712 *ice, int box, int master)
{
 struct hoontech_spec *spec = ice->spec;

 mutex_lock(&ice->gpio_mutex);


 ICE1712_STDSP24_0_BOX(spec->boxbits, box);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[0]);

 ICE1712_STDSP24_2_MIDIIN(spec->boxbits, 1);
 ICE1712_STDSP24_2_MIDI1(spec->boxbits, master);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[3]);

 udelay(100);

 ICE1712_STDSP24_2_MIDIIN(spec->boxbits, 0);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);

 mdelay(10);

 ICE1712_STDSP24_2_MIDIIN(spec->boxbits, 1);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);

 mutex_unlock(&ice->gpio_mutex);
}
