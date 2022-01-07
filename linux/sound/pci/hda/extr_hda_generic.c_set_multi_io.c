
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int active; } ;
struct hda_gen_spec {TYPE_1__* multi_io; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int ctl_in; int pin; } ;


 int EINVAL ;
 int PIN_OUT ;
 int aamix_default (struct hda_gen_spec*) ;
 struct nid_path* get_multiio_path (struct hda_codec*,int) ;
 int path_power_down_sync (struct hda_codec*,struct nid_path*) ;
 int set_pin_eapd (struct hda_codec*,int ,int) ;
 int set_pin_target (struct hda_codec*,int ,int ,int) ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int,int ) ;
 int update_automute_all (struct hda_codec*) ;

__attribute__((used)) static int set_multi_io(struct hda_codec *codec, int idx, bool output)
{
 struct hda_gen_spec *spec = codec->spec;
 hda_nid_t nid = spec->multi_io[idx].pin;
 struct nid_path *path;

 path = get_multiio_path(codec, idx);
 if (!path)
  return -EINVAL;

 if (path->active == output)
  return 0;

 if (output) {
  set_pin_target(codec, nid, PIN_OUT, 1);
  snd_hda_activate_path(codec, path, 1, aamix_default(spec));
  set_pin_eapd(codec, nid, 1);
 } else {
  set_pin_eapd(codec, nid, 0);
  snd_hda_activate_path(codec, path, 0, aamix_default(spec));
  set_pin_target(codec, nid, spec->multi_io[idx].ctl_in, 1);
  path_power_down_sync(codec, path);
 }


 update_automute_all(codec);

 return 0;
}
