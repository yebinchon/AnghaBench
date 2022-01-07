
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;


 int STAC946X_LF_VOLUME ;
 int STAC946X_MASTER_VOLUME ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stac9460_get (struct snd_ice1712*,int) ;

__attribute__((used)) static int stac9460_dac_vol_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int idx;
 unsigned char vol;

 if (kcontrol->private_value)
  idx = STAC946X_MASTER_VOLUME;
 else
  idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id) + STAC946X_LF_VOLUME;
 vol = stac9460_get(ice, idx) & 0x7f;
 ucontrol->value.integer.value[0] = 0x7f - vol;

 return 0;
}
