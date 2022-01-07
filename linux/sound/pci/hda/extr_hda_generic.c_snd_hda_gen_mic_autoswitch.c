
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct hda_gen_spec {int am_num_entries; TYPE_1__* am_entry; int auto_mic; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int idx; int pin; } ;


 int AC_PINCTL_OUT_EN ;
 scalar_t__ HDA_JACK_PRESENT ;
 int mux_select (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 scalar_t__ snd_hda_jack_detect_state (struct hda_codec*,int ) ;

void snd_hda_gen_mic_autoswitch(struct hda_codec *codec,
    struct hda_jack_callback *jack)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 if (!spec->auto_mic)
  return;

 for (i = spec->am_num_entries - 1; i > 0; i--) {
  hda_nid_t pin = spec->am_entry[i].pin;

  if (snd_hda_codec_get_pin_target(codec, pin) & AC_PINCTL_OUT_EN)
   continue;
  if (snd_hda_jack_detect_state(codec, pin) == HDA_JACK_PRESENT) {
   mux_select(codec, 0, spec->am_entry[i].idx);
   return;
  }
 }
 mux_select(codec, 0, spec->am_entry[0].idx);
}
