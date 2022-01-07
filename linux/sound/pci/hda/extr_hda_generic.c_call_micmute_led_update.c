
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int led_mode; unsigned int led_value; int (* update ) (struct hda_codec*) ;int capture; } ;
struct hda_gen_spec {TYPE_1__ micmute_led; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;






 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void call_micmute_led_update(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 unsigned int val;

 switch (spec->micmute_led.led_mode) {
 case 128:
  val = 1;
  break;
 case 129:
  val = 0;
  break;
 case 131:
  val = !!spec->micmute_led.capture;
  break;
 case 130:
 default:
  val = !spec->micmute_led.capture;
  break;
 }

 if (val == spec->micmute_led.led_value)
  return;
 spec->micmute_led.led_value = val;
 if (spec->micmute_led.update)
  spec->micmute_led.update(codec);
}
