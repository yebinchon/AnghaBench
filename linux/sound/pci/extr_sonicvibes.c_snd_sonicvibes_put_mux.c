
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sonicvibes {int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int SV_IREG_LEFT_ADC ;
 int SV_IREG_RIGHT_ADC ;
 unsigned short SV_RECSRC_OUT ;
 struct sonicvibes* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned short snd_sonicvibes_in1 (struct sonicvibes*,int ) ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,unsigned short) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_sonicvibes_put_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct sonicvibes *sonic = snd_kcontrol_chip(kcontrol);
 unsigned short left, right, oval1, oval2;
 int change;

 if (ucontrol->value.enumerated.item[0] >= 7 ||
     ucontrol->value.enumerated.item[1] >= 7)
  return -EINVAL;
 left = (ucontrol->value.enumerated.item[0] + 1) << 5;
 right = (ucontrol->value.enumerated.item[1] + 1) << 5;
 spin_lock_irq(&sonic->reg_lock);
 oval1 = snd_sonicvibes_in1(sonic, SV_IREG_LEFT_ADC);
 oval2 = snd_sonicvibes_in1(sonic, SV_IREG_RIGHT_ADC);
 left = (oval1 & ~SV_RECSRC_OUT) | left;
 right = (oval2 & ~SV_RECSRC_OUT) | right;
 change = left != oval1 || right != oval2;
 snd_sonicvibes_out1(sonic, SV_IREG_LEFT_ADC, left);
 snd_sonicvibes_out1(sonic, SV_IREG_RIGHT_ADC, right);
 spin_unlock_irq(&sonic->reg_lock);
 return change;
}
