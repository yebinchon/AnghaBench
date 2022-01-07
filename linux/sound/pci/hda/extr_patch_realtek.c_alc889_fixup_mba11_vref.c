
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int*) ;
 int HDA_FIXUP_ACT_INIT ;
 int alc889_fixup_mac_pins (struct hda_codec*,int*,int ) ;

__attribute__((used)) static void alc889_fixup_mba11_vref(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 static hda_nid_t nids[1] = { 0x18 };

 if (action == HDA_FIXUP_ACT_INIT)
  alc889_fixup_mac_pins(codec, nids, ARRAY_SIZE(nids));
}
