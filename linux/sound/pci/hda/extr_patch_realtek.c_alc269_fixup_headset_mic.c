
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int parse_flags; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_PINCFG_HEADSET_MIC ;

__attribute__((used)) static void alc269_fixup_headset_mic(struct hda_codec *codec,
           const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  spec->parse_flags |= HDA_PINCFG_HEADSET_MIC;
}
