
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;
 int SND_JACK_AVOUT ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_LINEIN ;
 int SND_JACK_LINEOUT ;
 int SND_JACK_MICROPHONE ;
 int get_defcfg_device (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;

__attribute__((used)) static int get_input_jack_type(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid);
 switch (get_defcfg_device(def_conf)) {
 case 131:
 case 128:
  return SND_JACK_LINEOUT;
 case 132:
  return SND_JACK_HEADPHONE;
 case 129:
 case 133:
  return SND_JACK_AVOUT;
 case 130:
  return SND_JACK_MICROPHONE;
 default:
  return SND_JACK_LINEIN;
 }
}
