
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int ae5_filter_val; } ;
struct TYPE_6__ {int val; int name; } ;


 unsigned int AE5_SOUND_FILTER_MAX ;
 TYPE_3__* ae5_filter_presets ;
 int ca0113_mmio_command_set_type2 (struct hda_codec*,int,int,int ) ;
 int codec_dbg (struct hda_codec*,char*,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ae5_sound_filter_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 int sel = ucontrol->value.enumerated.item[0];
 unsigned int items = AE5_SOUND_FILTER_MAX;

 if (sel >= items)
  return 0;

 codec_dbg(codec, "ae5_sound_filter: %s\n",
   ae5_filter_presets[sel].name);

 spec->ae5_filter_val = sel;

 ca0113_mmio_command_set_type2(codec, 0x48, 0x07,
   ae5_filter_presets[sel].val);

 return 1;
}
