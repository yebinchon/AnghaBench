
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void r3di_gpio_shutdown(struct hda_codec *codec)
{
 snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA, 0x00);
}
