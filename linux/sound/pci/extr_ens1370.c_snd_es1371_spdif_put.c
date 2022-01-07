
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ensoniq {unsigned int ctrl; unsigned int cssr; int reg_lock; } ;


 int CONTROL ;
 unsigned int ES_1373_SPDIF_EN ;
 unsigned int ES_1373_SPDIF_THRU ;
 int ES_REG (struct ensoniq*,int ) ;
 int STATUS ;
 int outl (unsigned int,int ) ;
 struct ensoniq* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_es1371_spdif_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct ensoniq *ensoniq = snd_kcontrol_chip(kcontrol);
 unsigned int nval1, nval2;
 int change;

 nval1 = ucontrol->value.integer.value[0] ? ES_1373_SPDIF_THRU : 0;
 nval2 = ucontrol->value.integer.value[0] ? ES_1373_SPDIF_EN : 0;
 spin_lock_irq(&ensoniq->reg_lock);
 change = (ensoniq->ctrl & ES_1373_SPDIF_THRU) != nval1;
 ensoniq->ctrl &= ~ES_1373_SPDIF_THRU;
 ensoniq->ctrl |= nval1;
 ensoniq->cssr &= ~ES_1373_SPDIF_EN;
 ensoniq->cssr |= nval2;
 outl(ensoniq->ctrl, ES_REG(ensoniq, CONTROL));
 outl(ensoniq->cssr, ES_REG(ensoniq, STATUS));
 spin_unlock_irq(&ensoniq->reg_lock);
 return change;
}
