
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int have_aamix_ctl; int mixer_nid; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int loopback_mixing_enum ;
 int snd_hda_gen_add_kctl (struct hda_gen_spec*,int *,int *) ;

__attribute__((used)) static int create_loopback_mixing_ctl(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;

 if (!spec->mixer_nid)
  return 0;
 if (!snd_hda_gen_add_kctl(spec, ((void*)0), &loopback_mixing_enum))
  return -ENOMEM;
 spec->have_aamix_ctl = 1;
 return 0;
}
