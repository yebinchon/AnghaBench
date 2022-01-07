
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int gpio_mute_led_mask; } ;


 int cxt_update_gpio_led (struct hda_codec*,int ,int) ;

__attribute__((used)) static void cxt_fixup_gpio_mute_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct conexant_spec *spec = codec->spec;

 cxt_update_gpio_led(codec, spec->gpio_mute_led_mask, !enabled);
}
