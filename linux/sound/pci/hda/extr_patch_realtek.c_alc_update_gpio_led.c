
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ mute_led_polarity; } ;


 int alc_update_gpio_data (struct hda_codec*,unsigned int,int) ;

__attribute__((used)) static void alc_update_gpio_led(struct hda_codec *codec, unsigned int mask,
    bool enabled)
{
 struct alc_spec *spec = codec->spec;

 if (spec->mute_led_polarity)
  enabled = !enabled;
 alc_update_gpio_data(codec, mask, !enabled);
}
