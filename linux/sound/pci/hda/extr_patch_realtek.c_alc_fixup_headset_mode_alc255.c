
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc255_set_default_jack_type (struct hda_codec*) ;
 int alc_fixup_headset_mode (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void alc_fixup_headset_mode_alc255(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  alc255_set_default_jack_type(codec);
 }
 alc_fixup_headset_mode(codec, fix, action);
}
