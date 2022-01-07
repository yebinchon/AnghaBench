
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int automute_hook; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int alc269_quanta_automute ;

__attribute__((used)) static void alc269_fixup_quanta_mute(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 if (action != HDA_FIXUP_ACT_PROBE)
  return;
 spec->gen.automute_hook = alc269_quanta_automute;
}
