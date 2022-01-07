
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int control_mutex; } ;


 unsigned long AMP_VAL_IDX_MASK ;
 unsigned long AMP_VAL_IDX_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_switch_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int sync_auto_mute_bits (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int hda_gen_bind_mute_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned long pval;
 int i, indices, err = 0, change = 0;

 sync_auto_mute_bits(kcontrol, ucontrol);

 mutex_lock(&codec->control_mutex);
 pval = kcontrol->private_value;
 indices = (pval & AMP_VAL_IDX_MASK) >> AMP_VAL_IDX_SHIFT;
 for (i = 0; i < indices; i++) {
  kcontrol->private_value = (pval & ~AMP_VAL_IDX_MASK) |
   (i << AMP_VAL_IDX_SHIFT);
  err = snd_hda_mixer_amp_switch_put(kcontrol, ucontrol);
  if (err < 0)
   break;
  change |= err;
 }
 kcontrol->private_value = pval;
 mutex_unlock(&codec->control_mutex);
 return err < 0 ? err : change;
}
