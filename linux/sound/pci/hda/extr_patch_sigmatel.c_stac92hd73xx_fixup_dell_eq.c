
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int volknob_init; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int dell_eq_core_init ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int stac92hd73xx_fixup_dell (struct hda_codec*) ;

__attribute__((used)) static void stac92hd73xx_fixup_dell_eq(struct hda_codec *codec,
           const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 stac92hd73xx_fixup_dell(codec);
 snd_hda_add_verbs(codec, dell_eq_core_init);
 spec->volknob_init = 1;
}
