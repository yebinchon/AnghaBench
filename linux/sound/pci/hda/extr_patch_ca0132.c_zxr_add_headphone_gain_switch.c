
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int dummy; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol_new CA0132_CODEC_MUTE_MONO (char*,int ,int,int ) ;
 int HDA_OUTPUT ;
 int ZXR_HEADPHONE_GAIN ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int zxr_add_headphone_gain_switch(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  CA0132_CODEC_MUTE_MONO("ZxR: 600 Ohm Gain",
        ZXR_HEADPHONE_GAIN, 1, HDA_OUTPUT);

 return snd_hda_ctl_add(codec, ZXR_HEADPHONE_GAIN,
    snd_ctl_new1(&knew, codec));
}
