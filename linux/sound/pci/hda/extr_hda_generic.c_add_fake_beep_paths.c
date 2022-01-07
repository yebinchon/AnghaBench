
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_pin_cfg {scalar_t__ line_out_type; int speaker_pins; int speaker_outs; int hp_pins; int hp_outs; int line_out_pins; int line_outs; } ;
struct hda_gen_spec {int beep_nid; struct auto_pin_cfg autocfg; } ;
struct hda_codec {int power_save_node; struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 int add_fake_paths (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int add_fake_beep_paths(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 hda_nid_t nid = spec->beep_nid;
 int err;

 if (!codec->power_save_node || !nid)
  return 0;
 err = add_fake_paths(codec, nid, cfg->line_outs, cfg->line_out_pins);
 if (err < 0)
  return err;
 if (cfg->line_out_type != AUTO_PIN_HP_OUT) {
  err = add_fake_paths(codec, nid, cfg->hp_outs, cfg->hp_pins);
  if (err < 0)
   return err;
 }
 if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
  err = add_fake_paths(codec, nid, cfg->speaker_outs,
         cfg->speaker_pins);
  if (err < 0)
   return err;
 }
 return 0;
}
