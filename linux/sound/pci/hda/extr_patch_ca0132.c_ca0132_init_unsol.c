
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int unsol_tag_front_hp; int unsol_tag_amic1; int unsol_tag_hp; } ;


 int UNSOL_TAG_DSP ;
 int amic_callback ;
 int ca0132_process_dsp_response ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 int hp_callback ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void ca0132_init_unsol(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 snd_hda_jack_detect_enable_callback(codec, spec->unsol_tag_hp, hp_callback);
 snd_hda_jack_detect_enable_callback(codec, spec->unsol_tag_amic1,
         amic_callback);
 snd_hda_jack_detect_enable_callback(codec, UNSOL_TAG_DSP,
         ca0132_process_dsp_response);

 if (ca0132_use_alt_functions(spec))
  snd_hda_jack_detect_enable_callback(codec,
   spec->unsol_tag_front_hp, hp_callback);
}
