
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int id; } ;
struct TYPE_3__ {int * dig_out_pins; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct sigmatel_spec {int * cur_smux; TYPE_2__ gen; int spdif_mux; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_hda_input_mux_put (struct hda_codec*,int *,struct snd_ctl_elem_value*,int ,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int stac_smux_enum_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct sigmatel_spec *spec = codec->spec;
 unsigned int smux_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);

 return snd_hda_input_mux_put(codec, &spec->spdif_mux, ucontrol,
         spec->gen.autocfg.dig_out_pins[smux_idx],
         &spec->cur_smux[smux_idx]);
}
