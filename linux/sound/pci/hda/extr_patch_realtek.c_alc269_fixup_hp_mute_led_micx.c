
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {int power_filter; struct alc_spec* spec; } ;
struct TYPE_3__ {int hook; } ;
struct TYPE_4__ {int vmaster_mute_enum; TYPE_1__ vmaster_mute; } ;
struct alc_spec {TYPE_2__ gen; int mute_led_nid; scalar_t__ mute_led_polarity; } ;
typedef int hda_nid_t ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int alc269_fixup_mic_mute_hook ;
 int led_power_filter ;

__attribute__((used)) static void alc269_fixup_hp_mute_led_micx(struct hda_codec *codec,
       const struct hda_fixup *fix,
       int action, hda_nid_t pin)
{
 struct alc_spec *spec = codec->spec;

 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  spec->mute_led_polarity = 0;
  spec->mute_led_nid = pin;
  spec->gen.vmaster_mute.hook = alc269_fixup_mic_mute_hook;
  spec->gen.vmaster_mute_enum = 1;
  codec->power_filter = led_power_filter;
 }
}
