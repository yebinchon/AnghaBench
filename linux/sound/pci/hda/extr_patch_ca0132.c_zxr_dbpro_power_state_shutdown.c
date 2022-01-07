
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_POWER_STATE ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void zxr_dbpro_power_state_shutdown(struct hda_codec *codec)
{
 hda_nid_t pins[7] = {0x05, 0x0c, 0x09, 0x0e, 0x08, 0x11, 0x01};
 unsigned int i;

 for (i = 0; i < 7; i++)
  snd_hda_codec_write(codec, pins[i], 0,
    AC_VERB_SET_POWER_STATE, 0x03);
}
