
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int autocfg; } ;
struct hda_codec {int patch_ops; struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int generic_patch_ops ;
 struct hda_gen_spec* kzalloc (int,int ) ;
 int snd_hda_gen_free (struct hda_codec*) ;
 int snd_hda_gen_parse_auto_config (struct hda_codec*,int *) ;
 int snd_hda_gen_spec_init (struct hda_gen_spec*) ;
 int snd_hda_parse_pin_defcfg (struct hda_codec*,int *,int *,int ) ;

__attribute__((used)) static int snd_hda_parse_generic_codec(struct hda_codec *codec)
{
 struct hda_gen_spec *spec;
 int err;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 snd_hda_gen_spec_init(spec);
 codec->spec = spec;

 err = snd_hda_parse_pin_defcfg(codec, &spec->autocfg, ((void*)0), 0);
 if (err < 0)
  goto error;

 err = snd_hda_gen_parse_auto_config(codec, &spec->autocfg);
 if (err < 0)
  goto error;

 codec->patch_ops = generic_patch_ops;
 return 0;

error:
 snd_hda_gen_free(codec);
 return err;
}
