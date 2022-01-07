
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int gpio_mask; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc_fixup_gpio (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc660vd_fixup_asus_gpio1(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE)
  spec->gpio_mask |= 0x02;
 alc_fixup_gpio(codec, action, 0x01);
}
