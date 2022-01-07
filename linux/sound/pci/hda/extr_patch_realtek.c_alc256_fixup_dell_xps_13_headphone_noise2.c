
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int AC_WCAP_IN_AMP ;
 int HDA_AMP_VOLMASK ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_INPUT ;
 int get_wcaps (struct hda_codec*,int) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,int ,int) ;
 int snd_hda_override_wcaps (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc256_fixup_dell_xps_13_headphone_noise2(struct hda_codec *codec,
            const struct hda_fixup *fix,
            int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 snd_hda_codec_amp_stereo(codec, 0x1a, HDA_INPUT, 0, HDA_AMP_VOLMASK, 1);
 snd_hda_override_wcaps(codec, 0x1a, get_wcaps(codec, 0x1a) & ~AC_WCAP_IN_AMP);
}
