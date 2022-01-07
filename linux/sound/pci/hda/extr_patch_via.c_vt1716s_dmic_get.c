
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;


 int AC_VERB_GET_CONNECT_SEL ;
 int snd_hda_codec_read (struct hda_codec*,int,int ,int ,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vt1716s_dmic_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 int index = 0;

 index = snd_hda_codec_read(codec, 0x26, 0,
            AC_VERB_GET_CONNECT_SEL, 0);
 if (index != -1)
  *ucontrol->value.integer.value = index;

 return 0;
}
