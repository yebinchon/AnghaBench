
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {scalar_t__ fixup_id; } ;


 scalar_t__ CS4208_GPIO0 ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 scalar_t__ HDA_FIXUP_ID_NOT_SET ;
 int cs4208_fixups ;
 int cs4208_mac_fixup_tbl ;
 int snd_hda_apply_fixup (struct hda_codec*,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;

__attribute__((used)) static void cs4208_fixup_mac(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 codec->fixup_id = HDA_FIXUP_ID_NOT_SET;
 snd_hda_pick_fixup(codec, ((void*)0), cs4208_mac_fixup_tbl, cs4208_fixups);
 if (codec->fixup_id == HDA_FIXUP_ID_NOT_SET)
  codec->fixup_id = CS4208_GPIO0;
 snd_hda_apply_fixup(codec, action);
}
