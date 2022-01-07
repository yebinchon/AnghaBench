
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
 int HDA_INPUT ;
 int snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static void ad1884_fixup_amp_override(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  snd_hda_override_amp_caps(codec, 0x20, HDA_INPUT,
       (0x17 << AC_AMPCAP_OFFSET_SHIFT) |
       (0x17 << AC_AMPCAP_NUM_STEPS_SHIFT) |
       (0x05 << AC_AMPCAP_STEP_SIZE_SHIFT) |
       (1 << AC_AMPCAP_MUTE_SHIFT));
}
