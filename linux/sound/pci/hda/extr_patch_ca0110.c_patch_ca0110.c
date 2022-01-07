
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_gen_spec {int multi_cap_vol; } ;
struct hda_codec {TYPE_1__* bus; int patch_ops; struct hda_gen_spec* spec; } ;
struct TYPE_2__ {int needs_damn_long_delay; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ca0110_parse_auto_config (struct hda_codec*) ;
 int ca0110_patch_ops ;
 struct hda_gen_spec* kzalloc (int,int ) ;
 int snd_hda_gen_free (struct hda_codec*) ;
 int snd_hda_gen_spec_init (struct hda_gen_spec*) ;

__attribute__((used)) static int patch_ca0110(struct hda_codec *codec)
{
 struct hda_gen_spec *spec;
 int err;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 snd_hda_gen_spec_init(spec);
 codec->spec = spec;
 codec->patch_ops = ca0110_patch_ops;

 spec->multi_cap_vol = 1;
 codec->bus->needs_damn_long_delay = 1;

 err = ca0110_parse_auto_config(codec);
 if (err < 0)
  goto error;

 return 0;

 error:
 snd_hda_gen_free(codec);
 return err;
}
