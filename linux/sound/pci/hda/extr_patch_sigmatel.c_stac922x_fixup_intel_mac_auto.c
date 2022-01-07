
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {scalar_t__ fixup_id; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 scalar_t__ HDA_FIXUP_ID_NOT_SET ;
 int snd_hda_apply_fixup (struct hda_codec*,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;
 int stac922x_fixups ;
 int stac922x_intel_mac_fixup_tbl ;

__attribute__((used)) static void stac922x_fixup_intel_mac_auto(struct hda_codec *codec,
       const struct hda_fixup *fix,
       int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 codec->fixup_id = HDA_FIXUP_ID_NOT_SET;
 snd_hda_pick_fixup(codec, ((void*)0), stac922x_intel_mac_fixup_tbl,
      stac922x_fixups);
 if (codec->fixup_id != HDA_FIXUP_ID_NOT_SET)
  snd_hda_apply_fixup(codec, action);
}
