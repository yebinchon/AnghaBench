
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pintbl {int member_0; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {int inv_jack_detect; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int snd_hda_apply_pincfgs (struct hda_codec*,struct hda_pintbl const*) ;

__attribute__((used)) static void cs4208_fixup_macmini(struct hda_codec *codec,
     const struct hda_fixup *fix, int action)
{
 static const struct hda_pintbl pincfgs[] = {
  { 0x18, 0x00ab9150 },
  { 0x21, 0x004be140 },
  { }
 };

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {

  codec->inv_jack_detect = 1;

  snd_hda_apply_pincfgs(codec, pincfgs);
 }
}
