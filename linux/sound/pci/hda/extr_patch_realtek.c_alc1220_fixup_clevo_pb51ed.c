
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc1220_fixup_clevo_p950 (struct hda_codec*,struct hda_fixup const*,int) ;
 int alc_fixup_headset_mode_no_hp_mic (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void alc1220_fixup_clevo_pb51ed(struct hda_codec *codec,
         const struct hda_fixup *fix,
         int action)
{
 alc1220_fixup_clevo_p950(codec, fix, action);
 alc_fixup_headset_mode_no_hp_mic(codec, fix, action);
}
