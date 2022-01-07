
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_OUTPUT ;
 int codec_warn (struct hda_codec*,char*) ;
 scalar_t__ snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static void alc272_fixup_mario(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;
 if (snd_hda_override_amp_caps(codec, 0x2, HDA_OUTPUT,
          (0x3b << AC_AMPCAP_OFFSET_SHIFT) |
          (0x3b << AC_AMPCAP_NUM_STEPS_SHIFT) |
          (0x03 << AC_AMPCAP_STEP_SIZE_SHIFT) |
          (0 << AC_AMPCAP_MUTE_SHIFT)))
  codec_warn(codec, "failed to override amp caps for NID 0x2\n");
}
