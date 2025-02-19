
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct hda_codec {int dummy; } ;


 int mux_select (struct hda_codec*,unsigned int,int ) ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int mux_enum_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int adc_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 return mux_select(codec, adc_idx,
     ucontrol->value.enumerated.item[0]);
}
