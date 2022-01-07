
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int power_filter; struct alc_spec* spec; } ;
struct alc_spec {int cap_mute_led_nid; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc_cap_micmute_update ;
 int alc_fixup_hp_gpio_led (struct hda_codec*,int,int,int ) ;
 int led_power_filter ;
 int snd_hda_gen_add_micmute_led (struct hda_codec*,int ) ;

__attribute__((used)) static void alc280_fixup_hp_gpio4(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 alc_fixup_hp_gpio_led(codec, action, 0x08, 0);
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->cap_mute_led_nid = 0x18;
  snd_hda_gen_add_micmute_led(codec, alc_cap_micmute_update);
  codec->power_filter = led_power_filter;
 }
}
