
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_ice1712_gpio_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char mask = kcontrol->private_value & 0xff;
 int invert = (kcontrol->private_value & (1<<24)) ? 1 : 0;

 snd_ice1712_save_gpio_status(ice);
 ucontrol->value.integer.value[0] =
  (snd_ice1712_gpio_read(ice) & mask ? 1 : 0) ^ invert;
 snd_ice1712_restore_gpio_status(ice);
 return 0;
}
