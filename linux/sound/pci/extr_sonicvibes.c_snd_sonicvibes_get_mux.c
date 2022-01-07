
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


 int SV_IREG_LEFT_ADC ;
 int SV_IREG_RIGHT_ADC ;
 int SV_RECSRC_OUT ;
 struct sonicvibes* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_sonicvibes_in1 (struct sonicvibes*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_sonicvibes_get_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct sonicvibes *sonic = snd_kcontrol_chip(kcontrol);

 spin_lock_irq(&sonic->reg_lock);
 ucontrol->value.enumerated.item[0] = ((snd_sonicvibes_in1(sonic, SV_IREG_LEFT_ADC) & SV_RECSRC_OUT) >> 5) - 1;
 ucontrol->value.enumerated.item[1] = ((snd_sonicvibes_in1(sonic, SV_IREG_RIGHT_ADC) & SV_RECSRC_OUT) >> 5) - 1;
 spin_unlock_irq(&sonic->reg_lock);
 return 0;
}
