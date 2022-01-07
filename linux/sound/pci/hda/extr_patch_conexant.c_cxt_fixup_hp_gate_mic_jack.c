
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int snd_hda_jack_set_gating_jack (struct hda_codec*,int,int) ;

__attribute__((used)) static void cxt_fixup_hp_gate_mic_jack(struct hda_codec *codec,
           const struct hda_fixup *fix,
           int action)
{



 if (action == HDA_FIXUP_ACT_PROBE)
  snd_hda_jack_set_gating_jack(codec, 0x19, 0x16);
}
