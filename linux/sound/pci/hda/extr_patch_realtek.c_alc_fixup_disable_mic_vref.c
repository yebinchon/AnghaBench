
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int PIN_VREFHIZ ;
 int snd_hda_codec_set_pin_target (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc_fixup_disable_mic_vref(struct hda_codec *codec,
      const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  snd_hda_codec_set_pin_target(codec, 0x19, PIN_VREFHIZ);
}
