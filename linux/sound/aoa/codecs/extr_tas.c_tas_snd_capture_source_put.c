
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tas {int acr; int mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int TAS_ACR_B_MONAUREAL ;
 int TAS_ACR_B_MON_SEL_RIGHT ;
 int TAS_ACR_INPUT_B ;
 int TAS_REG_ACR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tas* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tas_write_reg (struct tas*,int ,int,int*) ;

__attribute__((used)) static int tas_snd_capture_source_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct tas *tas = snd_kcontrol_chip(kcontrol);
 int oldacr;

 if (ucontrol->value.enumerated.item[0] > 1)
  return -EINVAL;
 mutex_lock(&tas->mtx);
 oldacr = tas->acr;






 tas->acr &= ~(TAS_ACR_INPUT_B | TAS_ACR_B_MONAUREAL);
 if (ucontrol->value.enumerated.item[0])
  tas->acr |= TAS_ACR_INPUT_B | TAS_ACR_B_MONAUREAL |
        TAS_ACR_B_MON_SEL_RIGHT;
 if (oldacr == tas->acr) {
  mutex_unlock(&tas->mtx);
  return 0;
 }
 if (tas->hw_enabled)
  tas_write_reg(tas, TAS_REG_ACR, 1, &tas->acr);
 mutex_unlock(&tas->mtx);
 return 1;
}
