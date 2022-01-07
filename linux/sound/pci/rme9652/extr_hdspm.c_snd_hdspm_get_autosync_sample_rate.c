
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {void** item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int io_type; } ;




 scalar_t__ HDSPM_AES32_AUTOSYNC_FROM_AES1 ;



 void* hdspm_external_rate_to_enum (struct hdspm*) ;
 void* hdspm_get_aes_sample_rate (struct hdspm*,scalar_t__) ;
 void* hdspm_get_s1_sample_rate (struct hdspm*,int ) ;
 void* hdspm_get_sync_in_sample_rate (struct hdspm*) ;
 void* hdspm_get_tco_sample_rate (struct hdspm*) ;
 void* hdspm_get_wc_sample_rate (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_get_autosync_sample_rate(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *
           ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);

 switch (hdspm->io_type) {
 case 128:
  switch (kcontrol->private_value) {
  case 0:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_wc_sample_rate(hdspm);
   break;
  case 7:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_tco_sample_rate(hdspm);
   break;
  case 8:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_sync_in_sample_rate(hdspm);
   break;
  default:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_s1_sample_rate(hdspm,
      kcontrol->private_value-1);
  }
  break;

 case 131:
  switch (kcontrol->private_value) {
  case 0:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_wc_sample_rate(hdspm);
   break;
  case 4:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_tco_sample_rate(hdspm);
   break;
  case 5:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_sync_in_sample_rate(hdspm);
   break;
  default:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_s1_sample_rate(hdspm,
      kcontrol->private_value-1);
  }
  break;

 case 132:

  switch (kcontrol->private_value) {
  case 0:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_wc_sample_rate(hdspm);
   break;
  case 9:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_tco_sample_rate(hdspm);
   break;
  case 10:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_sync_in_sample_rate(hdspm);
   break;
  case 11:
   ucontrol->value.enumerated.item[0] =
    hdspm_external_rate_to_enum(hdspm);
   break;
  default:
   ucontrol->value.enumerated.item[0] =
    hdspm_get_aes_sample_rate(hdspm,
      kcontrol->private_value -
      HDSPM_AES32_AUTOSYNC_FROM_AES1);
   break;
  }
  break;

 case 130:
 case 129:
  ucontrol->value.enumerated.item[0] =
   hdspm_external_rate_to_enum(hdspm);
  break;
 default:
  break;
 }

 return 0;
}
