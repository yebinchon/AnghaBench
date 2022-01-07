
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int mute_led_eapd; } ;


 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void cx_auto_vmaster_hook_mute_led(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct conexant_spec *spec = codec->spec;

 snd_hda_codec_write(codec, spec->mute_led_eapd, 0,
       AC_VERB_SET_EAPD_BTLENABLE,
       enabled ? 0x00 : 0x02);
}
