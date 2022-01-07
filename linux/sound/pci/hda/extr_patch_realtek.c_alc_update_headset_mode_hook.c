
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc_update_headset_mode (struct hda_codec*) ;

__attribute__((used)) static void alc_update_headset_mode_hook(struct hda_codec *codec,
      struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 alc_update_headset_mode(codec);
}
