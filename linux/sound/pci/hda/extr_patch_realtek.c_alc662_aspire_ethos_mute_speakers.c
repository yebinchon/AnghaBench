
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {int dummy; } ;


 scalar_t__ HDA_JACK_PRESENT ;
 int PIN_OUT ;
 scalar_t__ snd_hda_jack_detect_state (struct hda_codec*,int) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc662_aspire_ethos_mute_speakers(struct hda_codec *codec,
     struct hda_jack_callback *cb)
{






 if (snd_hda_jack_detect_state(codec, 0x1b) == HDA_JACK_PRESENT) {
  snd_hda_set_pin_ctl_cache(codec, 0x15, 0);
  snd_hda_set_pin_ctl_cache(codec, 0x18, 0);
 } else {
  snd_hda_set_pin_ctl_cache(codec, 0x15, PIN_OUT);
  snd_hda_set_pin_ctl_cache(codec, 0x18, PIN_OUT);
 }
}
