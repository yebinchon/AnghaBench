
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {int * master; int * vol; } ;


 int WM_DAC_ATTEN_L ;
 int WM_VOL_MUTE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_set_vol (struct snd_ice1712*,int,int ,int ) ;

__attribute__((used)) static int wm_dac_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct prodigy_hifi_spec *spec = ice->spec;
 int i, idx, change = 0;

 mutex_lock(&ice->gpio_mutex);
 for (i = 0; i < 2; i++) {
  if (ucontrol->value.integer.value[i] != spec->vol[2 + i]) {
   idx = WM_DAC_ATTEN_L + i;
   spec->vol[2 + i] &= WM_VOL_MUTE;
   spec->vol[2 + i] |= ucontrol->value.integer.value[i];
   wm_set_vol(ice, idx, spec->vol[2 + i], spec->master[i]);
   change = 1;
  }
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
