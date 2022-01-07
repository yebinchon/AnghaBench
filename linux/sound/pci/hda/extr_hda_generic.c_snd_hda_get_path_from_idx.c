
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int dummy; } ;
struct TYPE_2__ {int used; } ;
struct hda_gen_spec {TYPE_1__ paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 struct nid_path* snd_array_elem (TYPE_1__*,int) ;

struct nid_path *snd_hda_get_path_from_idx(struct hda_codec *codec, int idx)
{
 struct hda_gen_spec *spec = codec->spec;

 if (idx <= 0 || idx > spec->paths.used)
  return ((void*)0);
 return snd_array_elem(&spec->paths, idx - 1);
}
