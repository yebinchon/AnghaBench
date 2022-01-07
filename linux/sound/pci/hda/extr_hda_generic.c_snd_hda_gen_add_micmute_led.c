
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* update ) (struct hda_codec*) ;int old_hook; scalar_t__ led_value; scalar_t__ capture; int led_mode; } ;
struct hda_gen_spec {int cap_sync_hook; TYPE_1__ micmute_led; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int MICMUTE_LED_FOLLOW_MUTE ;
 int micmute_led_mode_ctl ;
 int snd_hda_gen_add_kctl (struct hda_gen_spec*,int *,int *) ;
 int update_micmute_led ;

int snd_hda_gen_add_micmute_led(struct hda_codec *codec,
    void (*hook)(struct hda_codec *))
{
 struct hda_gen_spec *spec = codec->spec;

 spec->micmute_led.led_mode = MICMUTE_LED_FOLLOW_MUTE;
 spec->micmute_led.capture = 0;
 spec->micmute_led.led_value = 0;
 spec->micmute_led.old_hook = spec->cap_sync_hook;
 spec->micmute_led.update = hook;
 spec->cap_sync_hook = update_micmute_led;
 if (!snd_hda_gen_add_kctl(spec, ((void*)0), &micmute_led_mode_ctl))
  return -ENOMEM;
 return 0;
}
