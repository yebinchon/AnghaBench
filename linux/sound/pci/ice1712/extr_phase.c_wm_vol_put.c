
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {struct phase28_spec* spec; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct phase28_spec {unsigned int* vol; int * master; } ;


 int WM_DAC_ATTEN ;
 unsigned int WM_VOL_MUTE ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_set_vol (struct snd_ice1712*,int,unsigned int,int ) ;

__attribute__((used)) static int wm_vol_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct phase28_spec *spec = ice->spec;
 int i, idx, ofs, voices;
 int change = 0;

 voices = kcontrol->private_value >> 8;
 ofs = kcontrol->private_value & 0xff;
 snd_ice1712_save_gpio_status(ice);
 for (i = 0; i < voices; i++) {
  unsigned int vol;
  vol = ucontrol->value.integer.value[i];
  if (vol > 0x7f)
   continue;
  vol |= spec->vol[ofs+i] & WM_VOL_MUTE;
  if (vol != spec->vol[ofs+i]) {
   spec->vol[ofs+i] = vol;
   idx = WM_DAC_ATTEN + ofs + i;
   wm_set_vol(ice, idx, spec->vol[ofs+i],
       spec->master[i]);
   change = 1;
  }
 }
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
