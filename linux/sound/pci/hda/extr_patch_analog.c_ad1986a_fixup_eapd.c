
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {scalar_t__ inv_eapd; struct ad198x_spec* spec; } ;
struct TYPE_2__ {int keep_eapd_on; } ;
struct ad198x_spec {int eapd_nid; TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void ad1986a_fixup_eapd(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct ad198x_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  codec->inv_eapd = 0;
  spec->gen.keep_eapd_on = 1;
  spec->eapd_nid = 0x1b;
 }
}
