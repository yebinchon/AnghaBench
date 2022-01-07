
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int alc_update_knob_master ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc880_fixup_vol_knob(struct hda_codec *codec,
      const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PROBE)
  snd_hda_jack_detect_enable_callback(codec, 0x21,
          alc_update_knob_master);
}
