
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int registered; } ;


 int codec_display_power (struct hda_codec*,int) ;
 scalar_t__ device_is_registered (int ) ;
 int hda_codec_dev (struct hda_codec*) ;
 int pm_runtime_enable (int ) ;
 int snd_hda_power_down (struct hda_codec*) ;

void snd_hda_codec_register(struct hda_codec *codec)
{
 if (codec->registered)
  return;
 if (device_is_registered(hda_codec_dev(codec))) {
  codec_display_power(codec, 1);
  pm_runtime_enable(hda_codec_dev(codec));

  snd_hda_power_down(codec);
  codec->registered = 1;
 }
}
