
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int io_type; scalar_t__ tco; } ;




 int HDSPM_TCO1_LTC_Input_valid ;
 int HDSPM_TCO1_TCO_lock ;



 int hdspm_aes_sync_check (struct hdspm*,int) ;
 int hdspm_madi_sync_check (struct hdspm*) ;
 int hdspm_s1_sync_check (struct hdspm*,int) ;
 int hdspm_sync_in_sync_check (struct hdspm*) ;
 int hdspm_tco_input_check (struct hdspm*,int ) ;
 int hdspm_tco_sync_check (struct hdspm*) ;
 int hdspm_wc_sync_check (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_get_sync_check(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int val = -1;

 switch (hdspm->io_type) {
 case 128:
  switch (kcontrol->private_value) {
  case 0:
   val = hdspm_wc_sync_check(hdspm); break;
  case 7:
   val = hdspm_tco_sync_check(hdspm); break;
  case 8:
   val = hdspm_sync_in_sync_check(hdspm); break;
  default:
   val = hdspm_s1_sync_check(hdspm,
     kcontrol->private_value-1);
  }
  break;

 case 131:
  switch (kcontrol->private_value) {
  case 0:
   val = hdspm_wc_sync_check(hdspm); break;
  case 4:
   val = hdspm_tco_sync_check(hdspm); break;
  case 5:
   val = hdspm_sync_in_sync_check(hdspm); break;
  default:
   val = hdspm_s1_sync_check(hdspm,
     kcontrol->private_value-1);
  }
  break;

 case 130:
  switch (kcontrol->private_value) {
  case 0:
   val = hdspm_wc_sync_check(hdspm); break;
  case 1:
   val = hdspm_madi_sync_check(hdspm); break;
  case 2:
   val = hdspm_tco_sync_check(hdspm); break;
  case 3:
   val = hdspm_sync_in_sync_check(hdspm); break;
  }
  break;

 case 129:
  val = hdspm_madi_sync_check(hdspm);
  break;

 case 132:
  switch (kcontrol->private_value) {
  case 0:
   val = hdspm_wc_sync_check(hdspm); break;
  case 9:
   val = hdspm_tco_sync_check(hdspm); break;
  case 10 :
   val = hdspm_sync_in_sync_check(hdspm); break;
  default:
    val = hdspm_aes_sync_check(hdspm,
      kcontrol->private_value-1);
  }
  break;

 }

 if (hdspm->tco) {
  switch (kcontrol->private_value) {
  case 11:

   val = hdspm_tco_input_check(hdspm, HDSPM_TCO1_TCO_lock);
   break;
  case 12:

   val = hdspm_tco_input_check(hdspm,
    HDSPM_TCO1_LTC_Input_valid);
   break;
  default:
   break;
  }
 }

 if (-1 == val)
  val = 3;

 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
