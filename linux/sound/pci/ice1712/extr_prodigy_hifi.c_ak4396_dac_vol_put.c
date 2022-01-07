
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {int* vol; } ;


 scalar_t__ AK4396_LCH_ATT ;
 int ak4396_write (struct snd_ice1712*,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ak4396_dac_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct prodigy_hifi_spec *spec = ice->spec;
 int i;
 int change = 0;

 mutex_lock(&ice->gpio_mutex);
 for (i = 0; i < 2; i++) {
  if (ucontrol->value.integer.value[i] != spec->vol[i]) {
   spec->vol[i] = ucontrol->value.integer.value[i];
   ak4396_write(ice, AK4396_LCH_ATT + i,
         spec->vol[i] & 0xff);
   change = 1;
  }
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
