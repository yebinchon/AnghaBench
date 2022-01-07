
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_3__ {int num_items; } ;
struct TYPE_4__ {int* dyn_adc_idx; int * adc_nids; TYPE_1__ input_mux; scalar_t__ dyn_adc_switch; int autocfg; } ;
struct cs_spec {TYPE_2__ gen; } ;


 int snd_hda_gen_fix_pin_power (struct hda_codec*,int ) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;

__attribute__((used)) static int cs_parse_auto_config(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 int err;
 int i;

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), 0);
 if (err < 0)
  return err;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;


 if (spec->gen.dyn_adc_switch) {
  unsigned int done = 0;
  for (i = 0; i < spec->gen.input_mux.num_items; i++) {
   int idx = spec->gen.dyn_adc_idx[i];
   if (done & (1 << idx))
    continue;
   snd_hda_gen_fix_pin_power(codec,
        spec->gen.adc_nids[idx]);
   done |= 1 << idx;
  }
 }

 return 0;
}
