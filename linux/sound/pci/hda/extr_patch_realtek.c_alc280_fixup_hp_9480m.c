
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_automute_hook; } ;
struct alc_spec {int gpio_mask; int gpio_dir; TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc280_hp_gpio4_automute_hook ;
 int alc_fixup_hp_gpio_led (struct hda_codec*,int,int,int ) ;

__attribute__((used)) static void alc280_fixup_hp_9480m(struct hda_codec *codec,
      const struct hda_fixup *fix,
      int action)
{
 struct alc_spec *spec = codec->spec;

 alc_fixup_hp_gpio_led(codec, action, 0x08, 0);
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {

  spec->gpio_mask |= 0x10;
  spec->gpio_dir |= 0x10;
  spec->gen.hp_automute_hook = alc280_hp_gpio4_automute_hook;
 }
}
