
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int core; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_DIGI_CONVERT_1 ;
 unsigned int convert_to_spdif_status (unsigned int) ;
 int snd_hdac_regmap_read (int *,int ,int ,unsigned int*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hda_spdif_in_status_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 unsigned int val;
 unsigned int sbits;

 snd_hdac_regmap_read(&codec->core, nid,
        AC_VERB_GET_DIGI_CONVERT_1, &val);
 sbits = convert_to_spdif_status(val);
 ucontrol->value.iec958.status[0] = sbits;
 ucontrol->value.iec958.status[1] = sbits >> 8;
 ucontrol->value.iec958.status[2] = sbits >> 16;
 ucontrol->value.iec958.status[3] = sbits >> 24;
 return 0;
}
