
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ad198x_power_eapd (struct hda_codec*) ;
 int snd_hda_shutup_pins (struct hda_codec*) ;

__attribute__((used)) static void ad198x_shutup(struct hda_codec *codec)
{
 snd_hda_shutup_pins(codec);
 ad198x_power_eapd(codec);
}
