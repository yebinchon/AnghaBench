
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int gpio_mutex; struct prodigy_hifi_spec* spec; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct prodigy_hifi_spec {int * master; int * vol; } ;


 int WM8766_LDA1 ;
 int WM_VOL_MUTE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm8766_set_vol (struct snd_ice1712*,int,int ,int ) ;

__attribute__((used)) static int wm8766_vol_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct prodigy_hifi_spec *spec = ice->spec;
 int i, idx, ofs, voices;
 int change = 0;

 voices = kcontrol->private_value >> 8;
 ofs = kcontrol->private_value & 0xff;
 mutex_lock(&ice->gpio_mutex);
 for (i = 0; i < voices; i++) {
  if (ucontrol->value.integer.value[i] != spec->vol[ofs + i]) {
   idx = WM8766_LDA1 + ofs + i;
   spec->vol[ofs + i] &= WM_VOL_MUTE;
   spec->vol[ofs + i] |= ucontrol->value.integer.value[i];
   wm8766_set_vol(ice, idx,
           spec->vol[ofs + i], spec->master[i]);
   change = 1;
  }
 }
 mutex_unlock(&ice->gpio_mutex);
 return change;
}
