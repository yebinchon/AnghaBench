
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int * adcs; } ;


 int AC_VERB_SET_CHANNEL_STREAMID ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void resume_mic1(struct hda_codec *codec, unsigned int oldval)
{
 struct ca0132_spec *spec = codec->spec;

 if (oldval != 0)
  snd_hda_codec_write(codec, spec->adcs[0], 0,
        AC_VERB_SET_CHANNEL_STREAMID,
        oldval);
}
