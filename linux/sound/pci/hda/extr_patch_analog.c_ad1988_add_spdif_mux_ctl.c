
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nid_path {int depth; int active; int multi; int idx; int path; } ;
struct TYPE_5__ {int init; } ;
struct hda_codec {TYPE_2__ patch_ops; struct ad198x_spec* spec; } ;
struct TYPE_4__ {int dig_outs; } ;
struct TYPE_6__ {int paths; TYPE_1__ autocfg; } ;
struct ad198x_spec {TYPE_3__ gen; int * smux_paths; } ;


 scalar_t__ AC_WID_AUD_MIX ;
 int ENOMEM ;
 int ad1988_auto_init ;
 int ad1988_auto_smux_mixer ;
 int get_wcaps (struct hda_codec*,int) ;
 scalar_t__ get_wcaps_type (int ) ;
 struct nid_path* snd_array_new (int *) ;
 int snd_hda_gen_add_kctl (TYPE_3__*,int *,int *) ;
 int snd_hda_get_num_conns (struct hda_codec*,int) ;
 int snd_hda_get_path_idx (struct hda_codec*,struct nid_path*) ;

__attribute__((used)) static int ad1988_add_spdif_mux_ctl(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;
 int i, num_conns;



 static struct nid_path fake_paths[4] = {
  {
   .depth = 3,
   .path = { 0x02, 0x1d, 0x1b },
   .idx = { 0, 0, 0 },
   .multi = { 0, 0, 0 },
  },
  {
   .depth = 4,
   .path = { 0x08, 0x0b, 0x1d, 0x1b },
   .idx = { 0, 0, 1, 0 },
   .multi = { 0, 1, 0, 0 },
  },
  {
   .depth = 4,
   .path = { 0x09, 0x0b, 0x1d, 0x1b },
   .idx = { 0, 1, 1, 0 },
   .multi = { 0, 1, 0, 0 },
  },
  {
   .depth = 4,
   .path = { 0x0f, 0x0b, 0x1d, 0x1b },
   .idx = { 0, 2, 1, 0 },
   .multi = { 0, 1, 0, 0 },
  },
 };


 if (!spec->gen.autocfg.dig_outs ||
     get_wcaps_type(get_wcaps(codec, 0x1d)) != AC_WID_AUD_MIX)
  return 0;

 num_conns = snd_hda_get_num_conns(codec, 0x0b) + 1;
 if (num_conns != 3 && num_conns != 4)
  return 0;

 for (i = 0; i < num_conns; i++) {
  struct nid_path *path = snd_array_new(&spec->gen.paths);
  if (!path)
   return -ENOMEM;
  *path = fake_paths[i];
  if (!i)
   path->active = 1;
  spec->smux_paths[i] = snd_hda_get_path_idx(codec, path);
 }

 if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), &ad1988_auto_smux_mixer))
  return -ENOMEM;

 codec->patch_ops.init = ad1988_auto_init;

 return 0;
}
