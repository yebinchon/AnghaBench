
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct TYPE_2__ {scalar_t__ line_out_type; scalar_t__* line_out_pins; scalar_t__* hp_pins; } ;
struct hda_gen_spec {int detect_lo; int automute_speaker; TYPE_1__ autocfg; int line_jack_present; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 int call_update_outputs (struct hda_codec*) ;
 int detect_jacks (struct hda_codec*,int ,scalar_t__*) ;

void snd_hda_gen_line_automute(struct hda_codec *codec,
          struct hda_jack_callback *jack)
{
 struct hda_gen_spec *spec = codec->spec;

 if (spec->autocfg.line_out_type == AUTO_PIN_SPEAKER_OUT)
  return;

 if (spec->autocfg.line_out_pins[0] == spec->autocfg.hp_pins[0])
  return;

 spec->line_jack_present =
  detect_jacks(codec, ARRAY_SIZE(spec->autocfg.line_out_pins),
        spec->autocfg.line_out_pins);
 if (!spec->automute_speaker || !spec->detect_lo)
  return;
 call_update_outputs(codec);
}
