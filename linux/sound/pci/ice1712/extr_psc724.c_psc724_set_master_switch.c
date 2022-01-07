
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int mute_all; } ;


 unsigned int GPIO_MUTE_ALL ;
 unsigned int GPIO_MUTE_SUR ;
 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void psc724_set_master_switch(struct snd_ice1712 *ice, bool on)
{
 unsigned int bits = snd_ice1712_gpio_read(ice);
 struct psc724_spec *spec = ice->spec;

 spec->mute_all = !on;
 if (on)
  bits &= ~(GPIO_MUTE_ALL | GPIO_MUTE_SUR);
 else
  bits |= GPIO_MUTE_ALL | GPIO_MUTE_SUR;
 snd_ice1712_gpio_write(ice, bits);
}
