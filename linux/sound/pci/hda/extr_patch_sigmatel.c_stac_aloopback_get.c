
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct sigmatel_spec {unsigned int aloopback; unsigned int aloopback_mask; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int stac_aloopback_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 struct sigmatel_spec *spec = codec->spec;

 ucontrol->value.integer.value[0] = !!(spec->aloopback &
           (spec->aloopback_mask << idx));
 return 0;
}
