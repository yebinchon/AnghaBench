
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int gpio_mute_led_mask; } ;


 int alc_update_gpio_led (struct hda_codec*,int ,int) ;

__attribute__((used)) static void alc_fixup_gpio_mute_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct alc_spec *spec = codec->spec;

 alc_update_gpio_led(codec, spec->gpio_mute_led_mask, enabled);
}
