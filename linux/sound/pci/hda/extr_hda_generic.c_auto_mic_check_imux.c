
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_input_mux {int num_items; } ;
struct hda_gen_spec {int am_num_entries; TYPE_1__* am_entry; int imux_pins; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct TYPE_2__ {scalar_t__ idx; int pin; } ;


 int call_mic_autoswitch ;
 scalar_t__ find_idx_in_nid_list (int ,int ,int ) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int ,int ) ;

__attribute__((used)) static bool auto_mic_check_imux(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 const struct hda_input_mux *imux;
 int i;

 imux = &spec->input_mux;
 for (i = 0; i < spec->am_num_entries; i++) {
  spec->am_entry[i].idx =
   find_idx_in_nid_list(spec->am_entry[i].pin,
          spec->imux_pins, imux->num_items);
  if (spec->am_entry[i].idx < 0)
   return 0;
 }


 for (i = 1; i < spec->am_num_entries; i++)
  snd_hda_jack_detect_enable_callback(codec,
          spec->am_entry[i].pin,
          call_mic_autoswitch);
 return 1;
}
