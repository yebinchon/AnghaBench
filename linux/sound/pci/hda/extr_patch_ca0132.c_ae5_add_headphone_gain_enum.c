
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;


 int AE5_HEADPHONE_GAIN_ENUM ;
 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (char*,int ,int,int ,int ) ;
 int HDA_OUTPUT ;
 int ae5_headphone_gain_get ;
 int ae5_headphone_gain_info ;
 int ae5_headphone_gain_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int ae5_add_headphone_gain_enum(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO("AE-5: Headphone Gain",
        AE5_HEADPHONE_GAIN_ENUM, 1, 0, HDA_OUTPUT);
 knew.info = ae5_headphone_gain_info;
 knew.get = ae5_headphone_gain_get;
 knew.put = ae5_headphone_gain_put;
 return snd_hda_ctl_add(codec, AE5_HEADPHONE_GAIN_ENUM,
    snd_ctl_new1(&knew, codec));
}
