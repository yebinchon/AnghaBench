
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_input_mux {int num_items; TYPE_1__* items; } ;
struct TYPE_4__ {int num_inputs; } ;
struct hda_gen_spec {int * input_label_idxs; int * input_labels; int * imux_pins; TYPE_2__ autocfg; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct TYPE_3__ {int index; } ;


 int add_single_cap_ctl (struct hda_codec*,int ,int ,int,int ,int) ;
 int get_first_cap_ctl (struct hda_codec*,int,int) ;
 int is_inv_dmic_pin (struct hda_codec*,int ) ;

__attribute__((used)) static int create_multi_cap_vol_ctl(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct hda_input_mux *imux = &spec->input_mux;
 int i, err, type;

 for (i = 0; i < imux->num_items; i++) {
  bool inv_dmic;
  int idx;

  idx = imux->items[i].index;
  if (idx >= spec->autocfg.num_inputs)
   continue;
  inv_dmic = is_inv_dmic_pin(codec, spec->imux_pins[i]);

  for (type = 0; type < 2; type++) {
   err = add_single_cap_ctl(codec,
       spec->input_labels[idx],
       spec->input_label_idxs[idx],
       type,
       get_first_cap_ctl(codec, i, type),
       inv_dmic);
   if (err < 0)
    return err;
  }
 }
 return 0;
}
