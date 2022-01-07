
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int dc_enable; } ;


 int AC_AMP_SET_LEFT ;
 int AC_AMP_SET_OUTPUT ;
 int AC_AMP_SET_RIGHT ;
 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int HDA_OUTPUT ;
 int snd_hda_codec_amp_read (struct hda_codec*,int,int,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void olpc_xo_update_mic_boost(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 int ch, val;

 for (ch = 0; ch < 2; ch++) {
  val = AC_AMP_SET_OUTPUT |
   (ch ? AC_AMP_SET_RIGHT : AC_AMP_SET_LEFT);
  if (!spec->dc_enable)
   val |= snd_hda_codec_amp_read(codec, 0x17, ch, HDA_OUTPUT, 0);
  snd_hda_codec_write(codec, 0x17, 0,
        AC_VERB_SET_AMP_GAIN_MUTE, val);
 }
}
