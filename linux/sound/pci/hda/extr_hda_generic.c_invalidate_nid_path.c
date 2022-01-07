
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int dummy; } ;
struct hda_codec {int dummy; } ;


 int memset (struct nid_path*,int ,int) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static void invalidate_nid_path(struct hda_codec *codec, int idx)
{
 struct nid_path *path = snd_hda_get_path_from_idx(codec, idx);
 if (!path)
  return;
 memset(path, 0, sizeof(*path));
}
