
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ HDA_JACK_NOT_PRESENT ;
 scalar_t__ snd_hda_jack_detect_state (struct hda_codec*,int ) ;

__attribute__((used)) static inline bool snd_hda_jack_detect(struct hda_codec *codec, hda_nid_t nid)
{
 return snd_hda_jack_detect_state(codec, nid) != HDA_JACK_NOT_PRESENT;
}
