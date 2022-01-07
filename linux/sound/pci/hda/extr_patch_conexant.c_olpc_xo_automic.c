
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ dc_enable; } ;


 int olpc_xo_update_mic_boost (struct hda_codec*) ;
 int olpc_xo_update_mic_pins (struct hda_codec*) ;
 int snd_hda_gen_mic_autoswitch (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void olpc_xo_automic(struct hda_codec *codec,
       struct hda_jack_callback *jack)
{
 struct conexant_spec *spec = codec->spec;


 if (!spec->dc_enable)
  snd_hda_gen_mic_autoswitch(codec, jack);
 olpc_xo_update_mic_pins(codec);
 if (spec->dc_enable)
  olpc_xo_update_mic_boost(codec);
}
