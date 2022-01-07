
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_CODEC_RESET ;
 int alc5505_coef_get (struct hda_codec*,int) ;
 int alc5505_coef_set (struct hda_codec*,int,int) ;
 int alc5505_dsp_back_from_halt (struct hda_codec*) ;
 int alc5505_dsp_halt (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int ) ;

__attribute__((used)) static void alc5505_dsp_init(struct hda_codec *codec)
{
 unsigned int val;

 alc5505_dsp_halt(codec);
 alc5505_dsp_back_from_halt(codec);
 alc5505_coef_set(codec, 0x61b0, 0x5b14);
 alc5505_coef_set(codec, 0x61b0, 0x5b16);
 alc5505_coef_set(codec, 0x61b4, 0x04132b00);
 alc5505_coef_set(codec, 0x61b4, 0x04132b02);
 alc5505_coef_set(codec, 0x61b8, 0x041f3300);
 alc5505_coef_set(codec, 0x61b8, 0x041f3302);
 snd_hda_codec_write(codec, 0x51, 0, AC_VERB_SET_CODEC_RESET, 0);
 alc5505_coef_set(codec, 0x61b8, 0x041b3302);
 alc5505_coef_set(codec, 0x61b8, 0x04173302);
 alc5505_coef_set(codec, 0x61b8, 0x04163302);
 alc5505_coef_set(codec, 0x8800, 0x348b328b);
 alc5505_coef_set(codec, 0x8808, 0x00020022);
 alc5505_coef_set(codec, 0x8818, 0x00000400);

 val = alc5505_coef_get(codec, 0x6200) >> 16;
 if (val <= 3)
  alc5505_coef_set(codec, 0x6220, 0x2002010f);
 else
  alc5505_coef_set(codec, 0x6220, 0x6002018f);

 alc5505_coef_set(codec, 0x61ac, 0x055525f0);
 alc5505_coef_set(codec, 0x61c0, 0x12230080);
 alc5505_coef_set(codec, 0x61b4, 0x040e2b02);
 alc5505_coef_set(codec, 0x61bc, 0x010234f8);
 alc5505_coef_set(codec, 0x880c, 0x00000004);
 alc5505_coef_set(codec, 0x880c, 0x00000003);
 alc5505_coef_set(codec, 0x880c, 0x00000010);




}
