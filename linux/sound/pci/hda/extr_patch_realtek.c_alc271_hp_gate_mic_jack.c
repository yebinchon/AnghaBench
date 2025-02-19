
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int dummy; } ;


 int HDA_FIXUP_ACT_PROBE ;
 int alc_get_hp_pin (struct alc_spec*) ;
 int find_ext_mic_pin (struct hda_codec*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_jack_set_gating_jack (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc271_hp_gate_mic_jack(struct hda_codec *codec,
        const struct hda_fixup *fix,
        int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PROBE) {
  int mic_pin = find_ext_mic_pin(codec);
  int hp_pin = alc_get_hp_pin(spec);

  if (snd_BUG_ON(!mic_pin || !hp_pin))
   return;
  snd_hda_jack_set_gating_jack(codec, mic_pin, hp_pin);
 }
}
