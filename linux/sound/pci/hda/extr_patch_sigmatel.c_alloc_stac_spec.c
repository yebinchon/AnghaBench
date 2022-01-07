
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dac_min_mute; } ;
struct sigmatel_spec {TYPE_1__ gen; } ;
struct hda_codec {int no_trigger_sense; int patch_ops; struct sigmatel_spec* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sigmatel_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (TYPE_1__*) ;
 int stac_patch_ops ;

__attribute__((used)) static int alloc_stac_spec(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 snd_hda_gen_spec_init(&spec->gen);
 codec->spec = spec;
 codec->no_trigger_sense = 1;
 spec->gen.dac_min_mute = 1;
 codec->patch_ops = stac_patch_ops;
 return 0;
}
