
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int active; int pin_fixed; int stream_enabled; int * path; } ;
struct hda_gen_spec {int paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int memset (struct nid_path*,int ,int) ;
 struct nid_path* snd_array_new (int *) ;

int snd_hda_gen_fix_pin_power(struct hda_codec *codec, hda_nid_t pin)
{
 struct hda_gen_spec *spec = codec->spec;
 struct nid_path *path;

 path = snd_array_new(&spec->paths);
 if (!path)
  return -ENOMEM;
 memset(path, 0, sizeof(*path));
 path->depth = 1;
 path->path[0] = pin;
 path->active = 1;
 path->pin_fixed = 1;
 path->stream_enabled = 1;
 return 0;
}
