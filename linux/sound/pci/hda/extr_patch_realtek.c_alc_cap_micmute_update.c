
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {scalar_t__ led_value; } ;
struct TYPE_4__ {TYPE_1__ micmute_led; } ;
struct alc_spec {int cap_mute_led_nid; TYPE_2__ gen; } ;


 unsigned int AC_PINCTL_VREFEN ;
 unsigned int AC_PINCTL_VREF_80 ;
 unsigned int AC_PINCTL_VREF_HIZ ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void alc_cap_micmute_update(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 unsigned int pinval;

 if (!spec->cap_mute_led_nid)
  return;
 pinval = snd_hda_codec_get_pin_target(codec, spec->cap_mute_led_nid);
 pinval &= ~AC_PINCTL_VREFEN;
 if (spec->gen.micmute_led.led_value)
  pinval |= AC_PINCTL_VREF_80;
 else
  pinval |= AC_PINCTL_VREF_HIZ;
 snd_hda_set_pin_ctl_cache(codec, spec->cap_mute_led_nid, pinval);
}
