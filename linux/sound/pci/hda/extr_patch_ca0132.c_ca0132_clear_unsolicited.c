
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void ca0132_clear_unsolicited(struct hda_codec *codec)
{
 hda_nid_t pins[7] = {0x0B, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13};
 unsigned int i;

 for (i = 0; i < 7; i++) {
  snd_hda_codec_write(codec, pins[i], 0,
    AC_VERB_SET_UNSOLICITED_ENABLE, 0x00);
 }
}
