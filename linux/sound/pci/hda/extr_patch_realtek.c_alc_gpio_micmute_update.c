
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {int led_value; } ;
struct TYPE_4__ {TYPE_1__ micmute_led; } ;
struct alc_spec {TYPE_2__ gen; int gpio_mic_led_mask; } ;


 int alc_update_gpio_led (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void alc_gpio_micmute_update(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 alc_update_gpio_led(codec, spec->gpio_mic_led_mask,
       spec->gen.micmute_led.led_value);
}
