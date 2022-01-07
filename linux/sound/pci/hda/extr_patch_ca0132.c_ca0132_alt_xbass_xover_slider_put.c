
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {long xbass_xover_freq; } ;
typedef int hda_nid_t ;


 int ca0132_alt_slider_ctl_set (struct hda_codec*,int ,int ,int) ;
 int float_xbass_xover_lookup ;
 int get_amp_nid (struct snd_kcontrol*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_alt_xbass_xover_slider_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid = get_amp_nid(kcontrol);
 long *valp = ucontrol->value.integer.value;
 int idx;


 if (spec->xbass_xover_freq == *valp)
  return 0;

 spec->xbass_xover_freq = *valp;

 idx = *valp;
 ca0132_alt_slider_ctl_set(codec, nid, float_xbass_xover_lookup, idx);

 return 0;
}
