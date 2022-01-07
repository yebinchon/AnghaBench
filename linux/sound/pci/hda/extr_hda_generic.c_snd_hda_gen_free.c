
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int * spec; } ;


 int HDA_FIXUP_ACT_FREE ;
 int kfree (int *) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_spec_free (int *) ;

void snd_hda_gen_free(struct hda_codec *codec)
{
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_FREE);
 snd_hda_gen_spec_free(codec->spec);
 kfree(codec->spec);
 codec->spec = ((void*)0);
}
