
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int * input_pins; } ;


 int HDA_AMP_VOLMASK ;
 int HDA_INPUT ;
 int snd_hda_codec_amp_update (struct hda_codec*,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int ca0132_mic_boost_set(struct hda_codec *codec, long val)
{
 struct ca0132_spec *spec = codec->spec;
 int ret = 0;

 if (val)
  ret = snd_hda_codec_amp_update(codec, spec->input_pins[0], 0,
     HDA_INPUT, 0, HDA_AMP_VOLMASK, 3);
 else
  ret = snd_hda_codec_amp_update(codec, spec->input_pins[0], 0,
     HDA_INPUT, 0, HDA_AMP_VOLMASK, 0);

 return ret;
}
