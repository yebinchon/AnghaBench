
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int parse_flags; } ;



 int HDA_PINCFG_HEADSET_MIC ;

__attribute__((used)) static void cxt_fixup_headset_mic(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct conexant_spec *spec = codec->spec;

 switch (action) {
 case 128:
  spec->parse_flags |= HDA_PINCFG_HEADSET_MIC;
  break;
 }
}
