
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {scalar_t__ active; } ;
struct hda_gen_spec {scalar_t__ power_down_unused; } ;
struct hda_codec {scalar_t__ power_save_node; struct hda_gen_spec* spec; } ;


 int path_power_update (struct hda_codec*,struct nid_path*,int) ;
 int sync_power_state_change (struct hda_codec*,int ) ;

__attribute__((used)) static void path_power_down_sync(struct hda_codec *codec, struct nid_path *path)
{
 struct hda_gen_spec *spec = codec->spec;

 if (!(spec->power_down_unused || codec->power_save_node) || path->active)
  return;
 sync_power_state_change(codec, path_power_update(codec, path, 1));
}
