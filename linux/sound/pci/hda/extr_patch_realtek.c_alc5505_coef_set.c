
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_COEF_INDEX ;
 int AC_VERB_SET_PROC_COEF ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;

__attribute__((used)) static void alc5505_coef_set(struct hda_codec *codec, unsigned int index_reg,
        unsigned int val)
{
 snd_hda_codec_write(codec, 0x51, 0, AC_VERB_SET_COEF_INDEX, index_reg >> 1);
 snd_hda_codec_write(codec, 0x51, 0, AC_VERB_SET_PROC_COEF, val & 0xffff);
 snd_hda_codec_write(codec, 0x51, 0, AC_VERB_SET_PROC_COEF, val >> 16);
}
