
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ PIN_HP ;
 scalar_t__ snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int out_jack_mode_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 if (snd_hda_codec_get_pin_target(codec, nid) == PIN_HP)
  ucontrol->value.enumerated.item[0] = 1;
 else
  ucontrol->value.enumerated.item[0] = 0;
 return 0;
}
