
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int power_save_node; struct cs_spec* spec; } ;
struct cs_spec {int vendor_nid; int gen; } ;


 int GFP_KERNEL ;
 struct cs_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (int *) ;

__attribute__((used)) static struct cs_spec *cs_alloc_spec(struct hda_codec *codec, int vendor_nid)
{
 struct cs_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return ((void*)0);
 codec->spec = spec;
 spec->vendor_nid = vendor_nid;
 codec->power_save_node = 1;
 snd_hda_gen_spec_init(&spec->gen);

 return spec;
}
