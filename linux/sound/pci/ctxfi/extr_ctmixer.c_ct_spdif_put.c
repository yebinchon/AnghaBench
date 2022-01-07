
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ct_atc {int (* spdif_out_set_status ) (struct ct_atc*,unsigned int) ;int (* spdif_out_get_status ) (struct ct_atc*,unsigned int*) ;} ;


 struct ct_atc* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct ct_atc*,unsigned int*) ;
 int stub2 (struct ct_atc*,unsigned int) ;

__attribute__((used)) static int ct_spdif_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct ct_atc *atc = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int status, old_status;

 status = (ucontrol->value.iec958.status[0] << 0) |
   (ucontrol->value.iec958.status[1] << 8) |
   (ucontrol->value.iec958.status[2] << 16) |
   (ucontrol->value.iec958.status[3] << 24);

 atc->spdif_out_get_status(atc, &old_status);
 change = (old_status != status);
 if (change)
  atc->spdif_out_set_status(atc, status);

 return change;
}
