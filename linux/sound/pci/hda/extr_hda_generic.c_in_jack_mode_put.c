
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCTL_VREFEN ;
 unsigned int cvt_from_vref_idx (unsigned int,unsigned int) ;
 unsigned int get_vref_caps (struct hda_codec*,int ) ;
 unsigned int get_vref_idx (unsigned int,unsigned int) ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int ,unsigned int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int in_jack_mode_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 unsigned int vref_caps = get_vref_caps(codec, nid);
 unsigned int val, idx;

 val = snd_hda_codec_get_pin_target(codec, nid);
 idx = cvt_from_vref_idx(vref_caps, val & AC_PINCTL_VREFEN);
 if (idx == ucontrol->value.enumerated.item[0])
  return 0;

 val &= ~AC_PINCTL_VREFEN;
 val |= get_vref_idx(vref_caps, ucontrol->value.enumerated.item[0]);
 snd_hda_set_pin_ctl_cache(codec, nid, val);
 return 1;
}
