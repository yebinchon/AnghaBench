
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_gen_spec {scalar_t__ automute_lo_possible; scalar_t__ automute_speaker_possible; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_enum_bool_helper_info (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;
 int snd_hda_enum_helper_info (struct snd_kcontrol*,struct snd_ctl_elem_info*,int,char const* const*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int automute_mode_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 static const char * const texts3[] = {
  "Disabled", "Speaker Only", "Line Out+Speaker"
 };

 if (spec->automute_speaker_possible && spec->automute_lo_possible)
  return snd_hda_enum_helper_info(kcontrol, uinfo, 3, texts3);
 return snd_hda_enum_bool_helper_info(kcontrol, uinfo);
}
