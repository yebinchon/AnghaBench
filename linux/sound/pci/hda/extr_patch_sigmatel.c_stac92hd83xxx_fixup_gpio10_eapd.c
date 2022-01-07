
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int eapd_mask; int gpio_mask; int gpio_dir; int gpio_data; scalar_t__ eapd_switch; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void stac92hd83xxx_fixup_gpio10_eapd(struct hda_codec *codec,
         const struct hda_fixup *fix,
         int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;
 spec->eapd_mask = spec->gpio_mask = spec->gpio_dir =
  spec->gpio_data = 0x10;
 spec->eapd_switch = 0;
}
