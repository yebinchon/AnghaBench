
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_cs4231 {int* image; int lock; } ;


 size_t CS4231_LEFT_INPUT ;
 int CS4231_MIXS_ALL ;
 size_t CS4231_RIGHT_INPUT ;
 struct snd_cs4231* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4231_get_mux(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_cs4231 *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);
 ucontrol->value.enumerated.item[0] =
  (chip->image[CS4231_LEFT_INPUT] & CS4231_MIXS_ALL) >> 6;
 ucontrol->value.enumerated.item[1] =
  (chip->image[CS4231_RIGHT_INPUT] & CS4231_MIXS_ALL) >> 6;
 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
