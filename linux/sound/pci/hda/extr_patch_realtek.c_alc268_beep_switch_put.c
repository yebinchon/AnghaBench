
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int control_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_switch_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int alc268_beep_switch_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned long pval;
 int err;

 mutex_lock(&codec->control_mutex);
 pval = kcontrol->private_value;
 kcontrol->private_value = (pval & ~0xff) | 0x0f;
 err = snd_hda_mixer_amp_switch_put(kcontrol, ucontrol);
 if (err >= 0) {
  kcontrol->private_value = (pval & ~0xff) | 0x10;
  err = snd_hda_mixer_amp_switch_put(kcontrol, ucontrol);
 }
 kcontrol->private_value = pval;
 mutex_unlock(&codec->control_mutex);
 return err;
}
