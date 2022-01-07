
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ HDA_JACK_NOT_PRESENT ;
 int is_jack_detectable (struct hda_codec*,int ) ;
 scalar_t__ snd_hda_jack_detect_state (struct hda_codec*,int ) ;

__attribute__((used)) static bool detect_pin_state(struct hda_codec *codec, hda_nid_t pin)
{
 if (!is_jack_detectable(codec, pin))
  return 1;
 return snd_hda_jack_detect_state(codec, pin) != HDA_JACK_NOT_PRESENT;
}
