
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int active; } ;
struct hda_gen_spec {int aamix_mode; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int ,int ) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int const) ;

__attribute__((used)) static void update_output_paths(struct hda_codec *codec, int num_outs,
    const int *paths)
{
 struct hda_gen_spec *spec = codec->spec;
 struct nid_path *path;
 int i;

 for (i = 0; i < num_outs; i++) {
  path = snd_hda_get_path_from_idx(codec, paths[i]);
  if (path)
   snd_hda_activate_path(codec, path, path->active,
           spec->aamix_mode);
 }
}
