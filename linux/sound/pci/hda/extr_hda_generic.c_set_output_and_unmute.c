
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int active; int * path; } ;
struct hda_codec {int spec; } ;
typedef int hda_nid_t ;


 int aamix_default (int ) ;
 int restore_pin_ctl (struct hda_codec*,int ) ;
 int set_pin_eapd (struct hda_codec*,int ,int ) ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int ,int ) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;

__attribute__((used)) static void set_output_and_unmute(struct hda_codec *codec, int path_idx)
{
 struct nid_path *path;
 hda_nid_t pin;

 path = snd_hda_get_path_from_idx(codec, path_idx);
 if (!path || !path->depth)
  return;
 pin = path->path[path->depth - 1];
 restore_pin_ctl(codec, pin);
 snd_hda_activate_path(codec, path, path->active,
         aamix_default(codec->spec));
 set_pin_eapd(codec, pin, path->active);
}
