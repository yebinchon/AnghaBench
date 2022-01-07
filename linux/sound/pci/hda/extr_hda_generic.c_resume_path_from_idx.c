
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int active; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int ,int) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static void resume_path_from_idx(struct hda_codec *codec, int path_idx)
{
 struct nid_path *path = snd_hda_get_path_from_idx(codec, path_idx);
 if (path)
  snd_hda_activate_path(codec, path, path->active, 0);
}
