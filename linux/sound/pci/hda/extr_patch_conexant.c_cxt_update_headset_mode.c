
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct conexant_spec* spec; } ;
struct auto_pin_cfg {int num_inputs; int * hp_pins; TYPE_1__* inputs; } ;
struct TYPE_4__ {scalar_t__* imux_pins; size_t* cur_mux; int hp_jack_present; struct auto_pin_cfg autocfg; } ;
struct conexant_spec {TYPE_2__ gen; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_3__ {scalar_t__ pin; int is_headphone_mic; } ;


 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int,int) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;

__attribute__((used)) static void cxt_update_headset_mode(struct hda_codec *codec)
{

 int i;
 bool mic_mode = 0;
 struct conexant_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;

 hda_nid_t mux_pin = spec->gen.imux_pins[spec->gen.cur_mux[0]];

 for (i = 0; i < cfg->num_inputs; i++)
  if (cfg->inputs[i].pin == mux_pin) {
   mic_mode = !!cfg->inputs[i].is_headphone_mic;
   break;
  }

 if (mic_mode) {
  snd_hda_codec_write_cache(codec, 0x1c, 0, 0x410, 0x7c);
  spec->gen.hp_jack_present = 0;
 } else {
  snd_hda_codec_write_cache(codec, 0x1c, 0, 0x410, 0x54);
  spec->gen.hp_jack_present = snd_hda_jack_detect(codec, spec->gen.autocfg.hp_pins[0]);
 }

 snd_hda_gen_update_outputs(codec);
}
