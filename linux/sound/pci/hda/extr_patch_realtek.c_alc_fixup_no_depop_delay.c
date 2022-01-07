
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {scalar_t__ depop_delay; struct alc_spec* spec; } ;
struct alc_spec {int no_depop_delay; } ;


 int HDA_FIXUP_ACT_PROBE ;

__attribute__((used)) static void alc_fixup_no_depop_delay(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PROBE) {
  spec->no_depop_delay = 1;
  codec->depop_delay = 0;
 }
}
