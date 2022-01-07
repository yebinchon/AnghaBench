
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int dummy; } ;
struct TYPE_2__ {int * hp_pins; } ;
struct hda_gen_spec {int automute_lo; int automute_speaker; int detect_hp; int hp_jack_present; scalar_t__ indep_hp_enabled; TYPE_1__ autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int *) ;
 int call_update_outputs (struct hda_codec*) ;
 int detect_jacks (struct hda_codec*,int,int *) ;

void snd_hda_gen_hp_automute(struct hda_codec *codec,
        struct hda_jack_callback *jack)
{
 struct hda_gen_spec *spec = codec->spec;
 hda_nid_t *pins = spec->autocfg.hp_pins;
 int num_pins = ARRAY_SIZE(spec->autocfg.hp_pins);


 if (spec->indep_hp_enabled) {
  pins++;
  num_pins--;
 }

 spec->hp_jack_present = detect_jacks(codec, num_pins, pins);
 if (!spec->detect_hp || (!spec->automute_speaker && !spec->automute_lo))
  return;
 call_update_outputs(codec);
}
