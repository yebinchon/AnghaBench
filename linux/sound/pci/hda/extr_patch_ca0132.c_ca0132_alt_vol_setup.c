
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_codec_write (struct hda_codec*,int,int ,int,int) ;

__attribute__((used)) static void ca0132_alt_vol_setup(struct hda_codec *codec)
{
 snd_hda_codec_write(codec, 0x02, 0, 0x797, 0x00);
 snd_hda_codec_write(codec, 0x02, 0, 0x798, 0x00);
 snd_hda_codec_write(codec, 0x03, 0, 0x797, 0x00);
 snd_hda_codec_write(codec, 0x03, 0, 0x798, 0x00);
 snd_hda_codec_write(codec, 0x04, 0, 0x797, 0x00);
 snd_hda_codec_write(codec, 0x04, 0, 0x798, 0x00);
 snd_hda_codec_write(codec, 0x07, 0, 0x797, 0x00);
 snd_hda_codec_write(codec, 0x07, 0, 0x798, 0x00);
}
