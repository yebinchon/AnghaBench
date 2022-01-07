
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int parse_flags; int current_headset_type; int current_headset_mode; } ;


 int ALC_HEADSET_MODE_UNKNOWN ;
 int ALC_HEADSET_TYPE_UNKNOWN ;



 int HDA_PINCFG_HEADPHONE_MIC ;
 int HDA_PINCFG_HEADSET_MIC ;
 int alc_probe_headset_mode (struct hda_codec*) ;
 int alc_update_headset_mode (struct hda_codec*) ;
 int is_s3_resume (struct hda_codec*) ;
 int is_s4_resume (struct hda_codec*) ;

__attribute__((used)) static void alc_fixup_headset_mode(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 switch (action) {
 case 129:
  spec->parse_flags |= HDA_PINCFG_HEADSET_MIC | HDA_PINCFG_HEADPHONE_MIC;
  break;
 case 128:
  alc_probe_headset_mode(codec);
  break;
 case 130:
  if (is_s3_resume(codec) || is_s4_resume(codec)) {
   spec->current_headset_mode = ALC_HEADSET_MODE_UNKNOWN;
   spec->current_headset_type = ALC_HEADSET_TYPE_UNKNOWN;
  }
  alc_update_headset_mode(codec);
  break;
 }
}
