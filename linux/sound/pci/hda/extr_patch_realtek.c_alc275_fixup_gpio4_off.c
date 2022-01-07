
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int gpio_mask; int gpio_dir; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void alc275_fixup_gpio4_off(struct hda_codec *codec,
       const struct hda_fixup *fix,
       int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->gpio_mask |= 0x04;
  spec->gpio_dir |= 0x04;

 }
}
