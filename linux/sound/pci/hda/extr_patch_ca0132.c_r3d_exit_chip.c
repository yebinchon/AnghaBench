
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ca0132_clear_unsolicited (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int,int) ;

__attribute__((used)) static void r3d_exit_chip(struct hda_codec *codec)
{
 ca0132_clear_unsolicited(codec);
 snd_hda_codec_write(codec, 0x01, 0, 0x793, 0x00);
 snd_hda_codec_write(codec, 0x01, 0, 0x794, 0x5b);
}
