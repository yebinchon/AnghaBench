
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int add_jack_modes; int hp_mic; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void alc260_fixup_fsc_s7020_jwse(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->gen.add_jack_modes = 1;
  spec->gen.hp_mic = 1;
 }
}
