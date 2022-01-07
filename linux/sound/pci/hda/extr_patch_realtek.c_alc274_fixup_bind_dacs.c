
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {scalar_t__ power_save_node; struct alc_spec* spec; } ;
struct TYPE_2__ {int* preferred_dacs; int auto_mute_via_amp; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void alc274_fixup_bind_dacs(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;
 static hda_nid_t preferred_pairs[] = {
  0x21, 0x03, 0x1b, 0x03, 0x16, 0x02,
  0
 };

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 spec->gen.preferred_dacs = preferred_pairs;
 spec->gen.auto_mute_via_amp = 1;
 codec->power_save_node = 0;
}
