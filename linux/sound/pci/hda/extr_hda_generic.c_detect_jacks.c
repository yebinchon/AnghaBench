
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PINCTL_IN_EN ;
 scalar_t__ HDA_JACK_PRESENT ;
 int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 scalar_t__ snd_hda_jack_detect_state (struct hda_codec*,int ) ;

__attribute__((used)) static bool detect_jacks(struct hda_codec *codec, int num_pins, hda_nid_t *pins)
{
 int i;
 bool present = 0;

 for (i = 0; i < num_pins; i++) {
  hda_nid_t nid = pins[i];
  if (!nid)
   break;

  if (snd_hda_codec_get_pin_target(codec, nid) & AC_PINCTL_IN_EN)
   continue;
  if (snd_hda_jack_detect_state(codec, nid) == HDA_JACK_PRESENT)
   present = 1;
 }
 return present;
}
