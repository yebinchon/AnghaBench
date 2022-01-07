
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_BUILD ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_build_controls (struct hda_codec*) ;

__attribute__((used)) static int alc_build_controls(struct hda_codec *codec)
{
 int err;

 err = snd_hda_gen_build_controls(codec);
 if (err < 0)
  return err;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_BUILD);
 return 0;
}
