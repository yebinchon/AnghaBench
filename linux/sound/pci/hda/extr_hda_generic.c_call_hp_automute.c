
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_gen_spec {int (* hp_automute_hook ) (struct hda_codec*,struct hda_jack_callback*) ;} ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_gen_hp_automute (struct hda_codec*,struct hda_jack_callback*) ;
 int stub1 (struct hda_codec*,struct hda_jack_callback*) ;

__attribute__((used)) static void call_hp_automute(struct hda_codec *codec,
        struct hda_jack_callback *jack)
{
 struct hda_gen_spec *spec = codec->spec;
 if (spec->hp_automute_hook)
  spec->hp_automute_hook(codec, jack);
 else
  snd_hda_gen_hp_automute(codec, jack);
}
