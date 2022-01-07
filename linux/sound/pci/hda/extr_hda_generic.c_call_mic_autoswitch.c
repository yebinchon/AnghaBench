
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_gen_spec {int (* mic_autoswitch_hook ) (struct hda_codec*,struct hda_jack_callback*) ;} ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_gen_mic_autoswitch (struct hda_codec*,struct hda_jack_callback*) ;
 int stub1 (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void call_mic_autoswitch(struct hda_codec *codec,
    struct hda_jack_callback *jack)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->mic_autoswitch_hook)
  spec->mic_autoswitch_hook(codec, jack);
 else
  snd_hda_gen_mic_autoswitch(codec, jack);
}
