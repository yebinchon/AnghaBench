
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct auto_pin_cfg {int dig_in_pin; int * dig_out_pins; } ;
struct ca0132_spec {unsigned int num_inputs; int * adcs; int * input_pins; int dig_in; int dig_out; struct auto_pin_cfg autocfg; } ;


 int init_input (struct hda_codec*,int ,int ) ;
 int init_output (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int dbpro_init(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 unsigned int i;

 init_output(codec, cfg->dig_out_pins[0], spec->dig_out);
 init_input(codec, cfg->dig_in_pin, spec->dig_in);

 for (i = 0; i < spec->num_inputs; i++)
  init_input(codec, spec->input_pins[i], spec->adcs[i]);

 return 0;
}
