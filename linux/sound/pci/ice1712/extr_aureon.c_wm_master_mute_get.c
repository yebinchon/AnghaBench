
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {struct aureon_spec* spec; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aureon_spec {int* master; } ;


 int WM_VOL_MUTE ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int wm_master_mute_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct aureon_spec *spec = ice->spec;

 ucontrol->value.integer.value[0] =
  (spec->master[0] & WM_VOL_MUTE) ? 0 : 1;
 ucontrol->value.integer.value[1] =
  (spec->master[1] & WM_VOL_MUTE) ? 0 : 1;
 return 0;
}
