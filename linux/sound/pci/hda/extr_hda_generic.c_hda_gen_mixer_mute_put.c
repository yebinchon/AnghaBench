
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int snd_hda_mixer_amp_switch_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int sync_auto_mute_bits (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int hda_gen_mixer_mute_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 sync_auto_mute_bits(kcontrol, ucontrol);
 return snd_hda_mixer_amp_switch_put(kcontrol, ucontrol);
}
