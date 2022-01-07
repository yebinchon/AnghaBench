
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_gen_hp_automute (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void alc_update_headset_jack_cb(struct hda_codec *codec,
           struct hda_jack_callback *jack)
{
 snd_hda_gen_hp_automute(codec, jack);
}
