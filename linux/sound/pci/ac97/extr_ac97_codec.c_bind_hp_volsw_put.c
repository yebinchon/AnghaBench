
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int AC97_HEADPHONE ;
 int snd_ac97_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int bind_hp_volsw_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 int err = snd_ac97_put_volsw(kcontrol, ucontrol);
 if (err > 0) {
  unsigned long priv_saved = kcontrol->private_value;
  kcontrol->private_value = (kcontrol->private_value & ~0xff) | AC97_HEADPHONE;
  snd_ac97_put_volsw(kcontrol, ucontrol);
  kcontrol->private_value = priv_saved;
 }
 return err;
}
