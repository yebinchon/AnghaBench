
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct sigmatel_spec {int spdif_mux; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int snd_hda_input_mux_info (int *,struct snd_ctl_elem_info*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int stac_smux_enum_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct sigmatel_spec *spec = codec->spec;
 return snd_hda_input_mux_info(&spec->spdif_mux, uinfo);
}
