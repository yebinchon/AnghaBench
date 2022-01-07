
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int gpio_write_delay; } ;


 int alc_fixup_gpio3 (struct hda_codec*,struct hda_fixup const*,int) ;

__attribute__((used)) static void alc885_fixup_macpro_gpio(struct hda_codec *codec,
         const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 spec->gpio_write_delay = 1;
 alc_fixup_gpio3(codec, fix, action);
}
