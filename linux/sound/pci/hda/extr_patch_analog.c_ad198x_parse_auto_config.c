
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int spdif_status_reset; int no_trigger_sense; int no_sticky_stream; struct ad198x_spec* spec; } ;
struct auto_pin_cfg {int dummy; } ;
struct TYPE_2__ {int indep_hp; scalar_t__ add_stereo_mix_input; struct auto_pin_cfg autocfg; } ;
struct ad198x_spec {TYPE_1__ gen; } ;


 scalar_t__ HDA_HINT_STEREO_MIX_AUTO ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,struct auto_pin_cfg*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,struct auto_pin_cfg*,int *,int ) ;

__attribute__((used)) static int ad198x_parse_auto_config(struct hda_codec *codec, bool indep_hp)
{
 struct ad198x_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;
 int err;

 codec->spdif_status_reset = 1;
 codec->no_trigger_sense = 1;
 codec->no_sticky_stream = 1;

 spec->gen.indep_hp = indep_hp;
 if (!spec->gen.add_stereo_mix_input)
  spec->gen.add_stereo_mix_input = HDA_HINT_STEREO_MIX_AUTO;

 err = snd_hda_parse_pin_defcfg(codec, cfg, ((void*)0), 0);
 if (err < 0)
  return err;
 err = snd_hda_gen_parse_auto_config(codec, cfg);
 if (err < 0)
  return err;

 return 0;
}
