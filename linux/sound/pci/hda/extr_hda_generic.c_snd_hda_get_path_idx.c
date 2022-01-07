
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int dummy; } ;
struct TYPE_2__ {int used; struct nid_path* list; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int ssize_t ;



int snd_hda_get_path_idx(struct hda_codec *codec, struct nid_path *path)
{
 struct hda_gen_spec *spec = codec->spec;
 struct nid_path *array = spec->paths.list;
 ssize_t idx;

 if (!spec->paths.used)
  return 0;
 idx = path - array;
 if (idx < 0 || idx >= spec->paths.used)
  return 0;
 return idx + 1;
}
