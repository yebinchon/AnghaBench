
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigmatel_spec {int mic_mute_led_gpio; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int power_caps; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;


 int AC_PWRST_CLKSTOP ;
 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void stac92hd83xxx_fixup_hp_mic_led(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 struct sigmatel_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->mic_mute_led_gpio = 0x08;




 }
}
