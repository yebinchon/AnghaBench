
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {char const** input_labels; int* input_label_idxs; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int pin; } ;


 char* hda_get_autocfg_input_label (struct hda_codec*,struct auto_pin_cfg const*,int) ;
 int is_input_pin (struct hda_codec*,int ) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int fill_input_pin_labels(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 const struct auto_pin_cfg *cfg = &spec->autocfg;
 int i;

 for (i = 0; i < cfg->num_inputs; i++) {
  hda_nid_t pin = cfg->inputs[i].pin;
  const char *label;
  int j, idx;

  if (!is_input_pin(codec, pin))
   continue;

  label = hda_get_autocfg_input_label(codec, cfg, i);
  idx = 0;
  for (j = i - 1; j >= 0; j--) {
   if (spec->input_labels[j] &&
       !strcmp(spec->input_labels[j], label)) {
    idx = spec->input_label_idxs[j] + 1;
    break;
   }
  }

  spec->input_labels[i] = label;
  spec->input_label_idxs[i] = idx;
 }

 return 0;
}
