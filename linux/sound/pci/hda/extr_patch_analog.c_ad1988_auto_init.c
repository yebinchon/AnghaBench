
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nid_path {int active; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_3__ {int dig_outs; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct ad198x_spec {int * smux_paths; TYPE_2__ gen; } ;


 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int ,int) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int ) ;

__attribute__((used)) static int ad1988_auto_init(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;
 int i, err;

 err = snd_hda_gen_init(codec);
 if (err < 0)
  return err;
 if (!spec->gen.autocfg.dig_outs)
  return 0;

 for (i = 0; i < 4; i++) {
  struct nid_path *path;
  path = snd_hda_get_path_from_idx(codec, spec->smux_paths[i]);
  if (path)
   snd_hda_activate_path(codec, path, path->active, 0);
 }

 return 0;
}
