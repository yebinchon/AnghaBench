
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int* saved; } ;
struct snd_ice1712 {int gpio_mutex; TYPE_3__ gpio; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CS_DEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spi_write (struct snd_ice1712*,int ,int,unsigned char) ;

__attribute__((used)) static int cs_source_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char val;
 int change = 0;

 mutex_lock(&ice->gpio_mutex);
 if (ucontrol->value.enumerated.item[0] != ice->gpio.saved[0]) {
  ice->gpio.saved[0] = ucontrol->value.enumerated.item[0] & 3;
  val = 0x80 | (ice->gpio.saved[0] << 3);
  spi_write(ice, CS_DEV, 0x04, val);
  change = 1;
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
