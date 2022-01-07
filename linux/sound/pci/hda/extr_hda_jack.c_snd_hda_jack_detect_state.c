
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {scalar_t__ phantom_jack; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PINSENSE_PRESENCE ;
 int HDA_JACK_NOT_PRESENT ;
 int HDA_JACK_PHANTOM ;
 int HDA_JACK_PRESENT ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;
 int snd_hda_pin_sense (struct hda_codec*,int ) ;

int snd_hda_jack_detect_state(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_jack_tbl *jack = snd_hda_jack_tbl_get(codec, nid);
 if (jack && jack->phantom_jack)
  return HDA_JACK_PHANTOM;
 else if (snd_hda_pin_sense(codec, nid) & AC_PINSENSE_PRESENCE)
  return HDA_JACK_PRESENT;
 else
  return HDA_JACK_NOT_PRESENT;
}
