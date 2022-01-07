
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int eapds; int num_eapds; int dynamic_eapd; } ;


 int HDA_FIXUP_ACT_INIT ;
 int cx_auto_turn_eapd (struct hda_codec*,int ,int ,int) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_gen_init (struct hda_codec*) ;

__attribute__((used)) static int cx_auto_init(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 snd_hda_gen_init(codec);
 if (!spec->dynamic_eapd)
  cx_auto_turn_eapd(codec, spec->num_eapds, spec->eapds, 1);

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_INIT);

 return 0;
}
