
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc_fixup_hp_gpio_led (struct hda_codec*,int,int,int) ;

__attribute__((used)) static void alc269_fixup_hp_gpio_led(struct hda_codec *codec,
    const struct hda_fixup *fix, int action)
{
 alc_fixup_hp_gpio_led(codec, action, 0x08, 0x10);
}
