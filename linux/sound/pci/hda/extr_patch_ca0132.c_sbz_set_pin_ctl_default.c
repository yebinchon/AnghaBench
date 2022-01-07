
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void sbz_set_pin_ctl_default(struct hda_codec *codec)
{
 hda_nid_t pins[5] = {0x0B, 0x0C, 0x0E, 0x12, 0x13};
 unsigned int i;

 snd_hda_codec_write(codec, 0x11, 0,
   AC_VERB_SET_PIN_WIDGET_CONTROL, 0x40);

 for (i = 0; i < 5; i++)
  snd_hda_codec_write(codec, pins[i], 0,
    AC_VERB_SET_PIN_WIDGET_CONTROL, 0x00);
}
