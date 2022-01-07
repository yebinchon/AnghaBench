
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EQ_PRESET_ENUM ;
 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (int ,int ,int,int ,int ) ;
 int HDA_OUTPUT ;
 TYPE_1__ ca0132_alt_eq_enum ;
 int ca0132_alt_eq_preset_get ;
 int ca0132_alt_eq_preset_info ;
 int ca0132_alt_eq_preset_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int add_ca0132_alt_eq_presets(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO(ca0132_alt_eq_enum.name,
        EQ_PRESET_ENUM, 1, 0, HDA_OUTPUT);
 knew.info = ca0132_alt_eq_preset_info;
 knew.get = ca0132_alt_eq_preset_get;
 knew.put = ca0132_alt_eq_preset_put;
 return snd_hda_ctl_add(codec, EQ_PRESET_ENUM,
    snd_ctl_new1(&knew, codec));
}
