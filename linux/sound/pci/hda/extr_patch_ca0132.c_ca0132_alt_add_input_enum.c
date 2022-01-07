
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (char*,int ,int,int ,int ) ;
 int HDA_INPUT ;
 int INPUT_SOURCE_ENUM ;
 int ca0132_alt_input_source_get ;
 int ca0132_alt_input_source_info ;
 int ca0132_alt_input_source_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int ca0132_alt_add_input_enum(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO("Input Source",
        INPUT_SOURCE_ENUM, 1, 0, HDA_INPUT);
 knew.info = ca0132_alt_input_source_info;
 knew.get = ca0132_alt_input_source_get;
 knew.put = ca0132_alt_input_source_put;
 return snd_hda_ctl_add(codec, INPUT_SOURCE_ENUM,
    snd_ctl_new1(&knew, codec));
}
