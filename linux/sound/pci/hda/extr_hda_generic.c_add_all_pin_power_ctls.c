
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int line_outs; scalar_t__ line_out_type; int hp_outs; int speaker_outs; int num_inputs; TYPE_1__* inputs; int * speaker_pins; int * hp_pins; int * line_out_pins; } ;
struct hda_gen_spec {struct auto_pin_cfg autocfg; } ;
struct hda_codec {int power_save_node; struct hda_gen_spec* spec; } ;
struct TYPE_2__ {int pin; } ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 int add_pin_power_ctls (struct hda_codec*,int,int *,int) ;

__attribute__((used)) static void add_all_pin_power_ctls(struct hda_codec *codec, bool on)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 int i;

 if (!codec->power_save_node)
  return;
 add_pin_power_ctls(codec, cfg->line_outs, cfg->line_out_pins, on);
 if (cfg->line_out_type != AUTO_PIN_HP_OUT)
  add_pin_power_ctls(codec, cfg->hp_outs, cfg->hp_pins, on);
 if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT)
  add_pin_power_ctls(codec, cfg->speaker_outs, cfg->speaker_pins, on);
 for (i = 0; i < cfg->num_inputs; i++)
  add_pin_power_ctls(codec, 1, &cfg->inputs[i].pin, on);
}
