
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned short* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ad1816a {int lock; } ;


 int AD1816A_ADC_SOURCE_SEL ;
 unsigned short snd_ad1816a_read (struct snd_ad1816a*,int ) ;
 struct snd_ad1816a* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_get_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ad1816a *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 unsigned short val;

 spin_lock_irqsave(&chip->lock, flags);
 val = snd_ad1816a_read(chip, AD1816A_ADC_SOURCE_SEL);
 spin_unlock_irqrestore(&chip->lock, flags);
 ucontrol->value.enumerated.item[0] = (val >> 12) & 7;
 ucontrol->value.enumerated.item[1] = (val >> 4) & 7;
 return 0;
}
