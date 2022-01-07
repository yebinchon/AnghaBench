
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (char*,int ,int,int ,int ) ;
 int HDA_INPUT ;
 int MIC_BOOST_ENUM ;
 int ca0132_alt_mic_boost_get ;
 int ca0132_alt_mic_boost_info ;
 int ca0132_alt_mic_boost_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int ca0132_alt_add_mic_boost_enum(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO("Mic Boost Capture Switch",
        MIC_BOOST_ENUM, 1, 0, HDA_INPUT);
 knew.info = ca0132_alt_mic_boost_info;
 knew.get = ca0132_alt_mic_boost_get;
 knew.put = ca0132_alt_mic_boost_put;
 return snd_hda_ctl_add(codec, MIC_BOOST_ENUM,
    snd_ctl_new1(&knew, codec));

}
