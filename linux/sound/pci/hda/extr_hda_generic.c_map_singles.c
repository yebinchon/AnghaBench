
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int active; } ;
struct hda_gen_spec {int mixer_nid; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 scalar_t__ get_dac_if_single (struct hda_codec*,scalar_t__ const) ;
 struct nid_path* snd_hda_add_new_path (struct hda_codec*,scalar_t__,scalar_t__ const,int ) ;
 int snd_hda_get_path_idx (struct hda_codec*,struct nid_path*) ;

__attribute__((used)) static bool map_singles(struct hda_codec *codec, int outs,
   const hda_nid_t *pins, hda_nid_t *dacs, int *path_idx)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;
 bool found = 0;
 for (i = 0; i < outs; i++) {
  struct nid_path *path;
  hda_nid_t dac;
  if (dacs[i])
   continue;
  dac = get_dac_if_single(codec, pins[i]);
  if (!dac)
   continue;
  path = snd_hda_add_new_path(codec, dac, pins[i],
         -spec->mixer_nid);
  if (!path && !i && spec->mixer_nid)
   path = snd_hda_add_new_path(codec, dac, pins[i], 0);
  if (path) {
   dacs[i] = dac;
   found = 1;

   path->active = 1;
   path_idx[i] = snd_hda_get_path_idx(codec, path);
  }
 }
 return found;
}
