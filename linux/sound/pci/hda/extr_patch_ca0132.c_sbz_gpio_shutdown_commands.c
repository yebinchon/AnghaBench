
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int AC_VERB_SET_GPIO_DIRECTION ;
 int AC_VERB_SET_GPIO_MASK ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void sbz_gpio_shutdown_commands(struct hda_codec *codec, int dir,
       int mask, int data)
{
 if (dir >= 0)
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DIRECTION, dir);
 if (mask >= 0)
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_MASK, mask);

 if (data >= 0)
  snd_hda_codec_write(codec, 0x01, 0,
    AC_VERB_SET_GPIO_DATA, data);
}
