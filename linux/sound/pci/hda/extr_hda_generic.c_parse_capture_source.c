
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_input_mux {int num_items; } ;
struct hda_gen_spec {scalar_t__* adc_nids; scalar_t__ hp_mic_pin; int hp_mic_mux_idx; int* dyn_adc_idx; scalar_t__ dyn_adc_switch; scalar_t__* imux_pins; int ** input_paths; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int is_reachable_path (struct hda_codec*,scalar_t__,scalar_t__) ;
 int print_nid_path (struct hda_codec*,char*,struct nid_path*) ;
 int snd_hda_add_imux_item (struct hda_codec*,struct hda_input_mux*,char const*,int,int *) ;
 struct nid_path* snd_hda_add_new_path (struct hda_codec*,scalar_t__,scalar_t__,int) ;
 int snd_hda_get_path_idx (struct hda_codec*,struct nid_path*) ;

__attribute__((used)) static int parse_capture_source(struct hda_codec *codec, hda_nid_t pin,
    int cfg_idx, int num_adcs,
    const char *label, int anchor)
{
 struct hda_gen_spec *spec = codec->spec;
 struct hda_input_mux *imux = &spec->input_mux;
 int imux_idx = imux->num_items;
 bool imux_added = 0;
 int c;

 for (c = 0; c < num_adcs; c++) {
  struct nid_path *path;
  hda_nid_t adc = spec->adc_nids[c];

  if (!is_reachable_path(codec, pin, adc))
   continue;
  path = snd_hda_add_new_path(codec, pin, adc, anchor);
  if (!path)
   continue;
  print_nid_path(codec, "input", path);
  spec->input_paths[imux_idx][c] =
   snd_hda_get_path_idx(codec, path);

  if (!imux_added) {
   if (spec->hp_mic_pin == pin)
    spec->hp_mic_mux_idx = imux->num_items;
   spec->imux_pins[imux->num_items] = pin;
   snd_hda_add_imux_item(codec, imux, label, cfg_idx, ((void*)0));
   imux_added = 1;
   if (spec->dyn_adc_switch)
    spec->dyn_adc_idx[imux_idx] = c;
  }
 }

 return 0;
}
