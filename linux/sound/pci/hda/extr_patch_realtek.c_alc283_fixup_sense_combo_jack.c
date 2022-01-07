
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_automute_hook; } ;
struct alc_spec {TYPE_1__ gen; } ;




 int alc283_hp_automute_hook ;
 int alc_update_coef_idx (struct hda_codec*,int,int,int ) ;

__attribute__((used)) static void alc283_fixup_sense_combo_jack(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 switch (action) {
 case 128:
  spec->gen.hp_automute_hook = alc283_hp_automute_hook;
  break;
 case 129:


  alc_update_coef_idx(codec, 0x06, 0x000c, 0);
  break;
 }
}
