
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int dummy; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int automute_mode_enum ;
 int snd_hda_gen_add_kctl (struct hda_gen_spec*,int *,int *) ;

__attribute__((used)) static int add_automute_mode_enum(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (!snd_hda_gen_add_kctl(spec, ((void*)0), &automute_mode_enum))
  return -ENOMEM;
 return 0;
}
