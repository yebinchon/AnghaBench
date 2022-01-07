
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0m {unsigned int int_sta_mask; unsigned int bdbars_count; int reg_lock; int int_sta_reg; struct ichdev* ichd; } ;
struct ichdev {unsigned int int_sta_mask; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int igetdword (struct intel8x0m*,int ) ;
 int iputdword (struct intel8x0m*,int ,unsigned int) ;
 int snd_intel8x0m_update (struct intel8x0m*,struct ichdev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_intel8x0m_interrupt(int irq, void *dev_id)
{
 struct intel8x0m *chip = dev_id;
 struct ichdev *ichdev;
 unsigned int status;
 unsigned int i;

 spin_lock(&chip->reg_lock);
 status = igetdword(chip, chip->int_sta_reg);
 if (status == 0xffffffff) {
  spin_unlock(&chip->reg_lock);
  return IRQ_NONE;
 }
 if ((status & chip->int_sta_mask) == 0) {
  if (status)
   iputdword(chip, chip->int_sta_reg, status);
  spin_unlock(&chip->reg_lock);
  return IRQ_NONE;
 }

 for (i = 0; i < chip->bdbars_count; i++) {
  ichdev = &chip->ichd[i];
  if (status & ichdev->int_sta_mask)
   snd_intel8x0m_update(chip, ichdev);
 }


 iputdword(chip, chip->int_sta_reg, status & chip->int_sta_mask);
 spin_unlock(&chip->reg_lock);

 return IRQ_HANDLED;
}
