
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_out_type; } ;
struct hda_gen_spec {int * aamix_out_paths; int * speaker_paths; int aamix_mode; int * hp_paths; TYPE_1__ autocfg; int * out_paths; int have_aamix_ctl; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int AUTO_PIN_HP_OUT ;
 int AUTO_PIN_SPEAKER_OUT ;
 int has_aamix_out_paths (struct hda_gen_spec*) ;
 int update_aamix_paths (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void init_aamix_paths(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (!spec->have_aamix_ctl)
  return;
 if (!has_aamix_out_paths(spec))
  return;
 update_aamix_paths(codec, spec->aamix_mode, spec->out_paths[0],
      spec->aamix_out_paths[0],
      spec->autocfg.line_out_type);
 update_aamix_paths(codec, spec->aamix_mode, spec->hp_paths[0],
      spec->aamix_out_paths[1],
      AUTO_PIN_HP_OUT);
 update_aamix_paths(codec, spec->aamix_mode, spec->speaker_paths[0],
      spec->aamix_out_paths[2],
      AUTO_PIN_SPEAKER_OUT);
}
