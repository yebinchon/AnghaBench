
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gpio_mask; int eapd_mask; int gpio_led; int gpio_dir; int gpio_data; int mic_mute_led_gpio; scalar_t__ mic_enabled; int vref_mute_led_nid; } ;
struct hda_codec {int power_filter; struct sigmatel_spec* spec; } ;


 int snd_hda_gen_add_micmute_led (struct hda_codec*,int ) ;
 int stac_capture_led_update ;
 int stac_vref_led_power_filter ;

__attribute__((used)) static void stac_setup_gpio(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;

 spec->gpio_mask |= spec->eapd_mask;
 if (spec->gpio_led) {
  if (!spec->vref_mute_led_nid) {
   spec->gpio_mask |= spec->gpio_led;
   spec->gpio_dir |= spec->gpio_led;
   spec->gpio_data |= spec->gpio_led;
  } else {
   codec->power_filter = stac_vref_led_power_filter;
  }
 }

 if (spec->mic_mute_led_gpio) {
  spec->gpio_mask |= spec->mic_mute_led_gpio;
  spec->gpio_dir |= spec->mic_mute_led_gpio;
  spec->mic_enabled = 0;
  spec->gpio_data |= spec->mic_mute_led_gpio;
  snd_hda_gen_add_micmute_led(codec, stac_capture_led_update);
 }
}
