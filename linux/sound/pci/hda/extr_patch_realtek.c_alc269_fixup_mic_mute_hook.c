
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ mute_led_nid; scalar_t__ mute_led_polarity; } ;


 unsigned int AC_PINCTL_VREFEN ;
 unsigned int AC_PINCTL_VREF_80 ;
 unsigned int AC_PINCTL_VREF_HIZ ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,scalar_t__) ;
 int snd_hda_power_down_pm (struct hda_codec*) ;
 int snd_hda_power_up_pm (struct hda_codec*) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,scalar_t__,unsigned int) ;

__attribute__((used)) static void alc269_fixup_mic_mute_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct alc_spec *spec = codec->spec;
 unsigned int pinval;

 if (spec->mute_led_polarity)
  enabled = !enabled;
 pinval = snd_hda_codec_get_pin_target(codec, spec->mute_led_nid);
 pinval &= ~AC_PINCTL_VREFEN;
 pinval |= enabled ? AC_PINCTL_VREF_HIZ : AC_PINCTL_VREF_80;
 if (spec->mute_led_nid) {

  snd_hda_power_up_pm(codec);
  snd_hda_set_pin_ctl_cache(codec, spec->mute_led_nid, pinval);
  snd_hda_power_down_pm(codec);
 }
}
