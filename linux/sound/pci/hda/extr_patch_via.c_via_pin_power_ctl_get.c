
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int power_down_unused; } ;
struct via_spec {TYPE_3__ gen; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;


 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int via_pin_power_ctl_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct via_spec *spec = codec->spec;

 ucontrol->value.enumerated.item[0] = spec->gen.power_down_unused;
 return 0;
}
