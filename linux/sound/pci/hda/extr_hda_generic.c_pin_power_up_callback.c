
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {int dummy; } ;
struct hda_codec {int dummy; } ;


 int pin_power_callback (struct hda_codec*,struct hda_jack_callback*,int) ;

__attribute__((used)) static void pin_power_up_callback(struct hda_codec *codec,
      struct hda_jack_callback *jack)
{
 pin_power_callback(codec, jack, 1);
}
