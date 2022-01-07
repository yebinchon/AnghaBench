
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;


 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (char*,int ,int,int ,int ) ;
 int HDA_OUTPUT ;
 int OUTPUT_SOURCE_ENUM ;
 int ca0132_alt_output_select_get ;
 int ca0132_alt_output_select_get_info ;
 int ca0132_alt_output_select_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int ca0132_alt_add_output_enum(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO("Output Select",
        OUTPUT_SOURCE_ENUM, 1, 0, HDA_OUTPUT);
 knew.info = ca0132_alt_output_select_get_info;
 knew.get = ca0132_alt_output_select_get;
 knew.put = ca0132_alt_output_select_put;
 return snd_hda_ctl_add(codec, OUTPUT_SOURCE_ENUM,
    snd_ctl_new1(&knew, codec));
}
