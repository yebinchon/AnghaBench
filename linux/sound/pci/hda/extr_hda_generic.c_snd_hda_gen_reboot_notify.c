
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; } ;


 int AC_PWRST_D3 ;
 int AC_VERB_SET_POWER_STATE ;
 int msleep (int) ;
 int snd_hda_codec_set_power_to_all (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

void snd_hda_gen_reboot_notify(struct hda_codec *codec)
{



 snd_hda_codec_set_power_to_all(codec, codec->core.afg, AC_PWRST_D3);
 snd_hda_codec_write(codec, codec->core.afg, 0,
       AC_VERB_SET_POWER_STATE, AC_PWRST_D3);
 msleep(10);
}
