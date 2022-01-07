
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;

__attribute__((used)) static int ca0110_parse_auto_config(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int err;

 err = snd_hda_parse_pin_defcfg(codec, &spec->autocfg, ((void*)0), 0);
 if (err < 0)
  return err;
 err = snd_hda_gen_parse_auto_config(codec, &spec->autocfg);
 if (err < 0)
  return err;

 return 0;
}
