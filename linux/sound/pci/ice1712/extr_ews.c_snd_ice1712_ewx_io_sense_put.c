
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int EPERM ;
 int ICE1712_IREG_GPIO_DATA ;
 int snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,int) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ice1712_ewx_io_sense_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char mask = kcontrol->private_value & 0xff;
 int val, nval;

 if (kcontrol->private_value & (1 << 31))
  return -EPERM;
 nval = ucontrol->value.enumerated.item[0] ? mask : 0;
 snd_ice1712_save_gpio_status(ice);
 val = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 nval |= val & ~mask;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, nval);
 snd_ice1712_restore_gpio_status(ice);
 return val != nval;
}
