
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {size_t depth; int * path; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ __parse_nid_path (struct hda_codec*,int ,int ,int,struct nid_path*,int) ;

__attribute__((used)) static bool snd_hda_parse_nid_path(struct hda_codec *codec, hda_nid_t from_nid,
       hda_nid_t to_nid, int anchor_nid,
       struct nid_path *path)
{
 if (__parse_nid_path(codec, from_nid, to_nid, anchor_nid, path, 1)) {
  path->path[path->depth] = to_nid;
  path->depth++;
  return 1;
 }
 return 0;
}
