
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; struct hoontech_spec* spec; } ;
struct hoontech_spec {int * boxbits; } ;


 int ICE1712_STDSP24_0_BOX (int *,int) ;
 int ICE1712_STDSP24_1_CHN1 (int *,int) ;
 int ICE1712_STDSP24_1_CHN2 (int *,int) ;
 int ICE1712_STDSP24_1_CHN3 (int *,int) ;
 int ICE1712_STDSP24_2_CHN4 (int *,int) ;
 int ICE1712_STDSP24_2_MIDI1 (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ice1712_stdsp24_gpio_write (struct snd_ice1712*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_ice1712_stdsp24_box_channel(struct snd_ice1712 *ice, int box, int chn, int activate)
{
 struct hoontech_spec *spec = ice->spec;

 mutex_lock(&ice->gpio_mutex);


 ICE1712_STDSP24_0_BOX(spec->boxbits, box);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[0]);


 if (chn == 3)
  ICE1712_STDSP24_2_CHN4(spec->boxbits, 0);
 ICE1712_STDSP24_2_MIDI1(spec->boxbits, activate);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[3]);

 ICE1712_STDSP24_1_CHN1(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN2(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN3(spec->boxbits, 1);
 ICE1712_STDSP24_2_CHN4(spec->boxbits, 1);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[1]);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);
 udelay(100);
 if (chn == 3) {
  ICE1712_STDSP24_2_CHN4(spec->boxbits, 0);
  snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);
 } else {
  switch (chn) {
  case 0: ICE1712_STDSP24_1_CHN1(spec->boxbits, 0); break;
  case 1: ICE1712_STDSP24_1_CHN2(spec->boxbits, 0); break;
  case 2: ICE1712_STDSP24_1_CHN3(spec->boxbits, 0); break;
  }
  snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[1]);
 }
 udelay(100);
 ICE1712_STDSP24_1_CHN1(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN2(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN3(spec->boxbits, 1);
 ICE1712_STDSP24_2_CHN4(spec->boxbits, 1);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[1]);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);
 udelay(100);

 ICE1712_STDSP24_2_MIDI1(spec->boxbits, 0);
 snd_ice1712_stdsp24_gpio_write(ice, spec->boxbits[2]);

 mutex_unlock(&ice->gpio_mutex);
}
