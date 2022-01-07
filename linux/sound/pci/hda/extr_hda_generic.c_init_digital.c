
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dig_outs; scalar_t__ dig_in_pin; } ;
struct hda_gen_spec {int digin_path; TYPE_1__ autocfg; int * digout_paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int restore_pin_ctl (struct hda_codec*,scalar_t__) ;
 int resume_path_from_idx (struct hda_codec*,int ) ;
 int set_output_and_unmute (struct hda_codec*,int ) ;

__attribute__((used)) static void init_digital(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;
 hda_nid_t pin;

 for (i = 0; i < spec->autocfg.dig_outs; i++)
  set_output_and_unmute(codec, spec->digout_paths[i]);
 pin = spec->autocfg.dig_in_pin;
 if (pin) {
  restore_pin_ctl(codec, pin);
  resume_path_from_idx(codec, spec->digin_path);
 }
}
