
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int volknob_init; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int stac927x_volknob_core_init ;

__attribute__((used)) static void stac927x_fixup_volknob(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  snd_hda_add_verbs(codec, stac927x_volknob_core_init);
  spec->volknob_init = 1;
 }
}
