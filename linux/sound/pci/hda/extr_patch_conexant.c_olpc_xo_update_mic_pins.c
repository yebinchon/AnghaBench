
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nid_path {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct TYPE_4__ {int** input_paths; size_t* cur_mux; } ;
struct conexant_spec {size_t dc_input_bias; struct nid_path* dc_mode_path; scalar_t__ recording; int dc_enable; TYPE_1__ gen; } ;
struct TYPE_6__ {TYPE_2__* items; } ;
struct TYPE_5__ {int index; } ;


 int PIN_IN ;
 TYPE_3__ olpc_xo_dc_bias ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int,int) ;
 int snd_hda_codec_get_pin_target (struct hda_codec*,int) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;
 int update_mic_pin (struct hda_codec*,int,int) ;

__attribute__((used)) static void olpc_xo_update_mic_pins(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 int cur_input, val;
 struct nid_path *path;

 cur_input = spec->gen.input_paths[0][spec->gen.cur_mux[0]];




 if (!spec->dc_enable) {

  update_mic_pin(codec, 0x1e, 0);
  snd_hda_activate_path(codec, spec->dc_mode_path, 0, 0);
  update_mic_pin(codec, 0x1a, spec->recording ?
          snd_hda_codec_get_pin_target(codec, 0x1a) : 0);
  update_mic_pin(codec, 0x1b, spec->recording ?
          snd_hda_codec_get_pin_target(codec, 0x1b) : 0);

  path = snd_hda_get_path_from_idx(codec, cur_input);
  if (path)
   snd_hda_activate_path(codec, path, 1, 0);
 } else {

  path = snd_hda_get_path_from_idx(codec, cur_input);
  if (path)
   snd_hda_activate_path(codec, path, 0, 0);






  if (spec->recording)
   val = olpc_xo_dc_bias.items[spec->dc_input_bias].index;
  else
   val = 0;
  update_mic_pin(codec, 0x1a, val);
  update_mic_pin(codec, 0x1b, 0);

  update_mic_pin(codec, 0x1e, spec->recording ? PIN_IN : 0);
  snd_hda_activate_path(codec, spec->dc_mode_path, 1, 0);
 }
}
