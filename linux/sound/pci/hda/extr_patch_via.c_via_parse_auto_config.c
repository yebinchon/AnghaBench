
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power_down_unused; int autocfg; int * extra_out_badness; int * main_out_badness; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {scalar_t__ power_save_node; struct via_spec* spec; } ;


 int ENOMEM ;
 int auto_parse_beep (struct hda_codec*) ;
 int snd_hda_gen_add_kctl (TYPE_1__*,int *,int *) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;
 int via_extra_out_badness ;
 int via_main_out_badness ;
 int via_pin_power_ctl_enum ;

__attribute__((used)) static int via_parse_auto_config(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int err;

 spec->gen.main_out_badness = &via_main_out_badness;
 spec->gen.extra_out_badness = &via_extra_out_badness;

 err = snd_hda_parse_pin_defcfg(codec, &spec->gen.autocfg, ((void*)0), 0);
 if (err < 0)
  return err;

 err = snd_hda_gen_parse_auto_config(codec, &spec->gen.autocfg);
 if (err < 0)
  return err;

 err = auto_parse_beep(codec);
 if (err < 0)
  return err;

 if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), &via_pin_power_ctl_enum))
  return -ENOMEM;


 codec->power_save_node = 0;
 spec->gen.power_down_unused = 0;
 return 0;
}
