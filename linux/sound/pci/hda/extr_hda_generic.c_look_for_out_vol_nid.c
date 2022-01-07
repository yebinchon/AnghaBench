
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int* path; } ;
struct hda_gen_spec {int out_vol_mask; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int HDA_OUTPUT ;
 scalar_t__ nid_has_volume (struct hda_codec*,int,int ) ;

__attribute__((used)) static hda_nid_t look_for_out_vol_nid(struct hda_codec *codec,
          struct nid_path *path)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 for (i = path->depth - 1; i >= 0; i--) {
  hda_nid_t nid = path->path[i];
  if ((spec->out_vol_mask >> nid) & 1)
   continue;
  if (nid_has_volume(codec, nid, HDA_OUTPUT))
   return nid;
 }
 return 0;
}
