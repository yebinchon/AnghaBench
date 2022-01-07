
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0 {unsigned int int_sta_mask; unsigned int bdbars_count; int int_sta_reg; struct ichdev* ichd; int buggy_irq; } ;
struct ichdev {unsigned int int_sta_mask; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_RETVAL (unsigned int) ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 int snd_intel8x0_update (struct intel8x0*,struct ichdev*) ;

__attribute__((used)) static irqreturn_t snd_intel8x0_interrupt(int irq, void *dev_id)
{
 struct intel8x0 *chip = dev_id;
 struct ichdev *ichdev;
 unsigned int status;
 unsigned int i;

 status = igetdword(chip, chip->int_sta_reg);
 if (status == 0xffffffff)
  return IRQ_NONE;

 if ((status & chip->int_sta_mask) == 0) {
  if (status) {

   iputdword(chip, chip->int_sta_reg, status);
   if (! chip->buggy_irq)
    status = 0;
  }
  return IRQ_RETVAL(status);
 }

 for (i = 0; i < chip->bdbars_count; i++) {
  ichdev = &chip->ichd[i];
  if (status & ichdev->int_sta_mask)
   snd_intel8x0_update(chip, ichdev);
 }


 iputdword(chip, chip->int_sta_reg, status & chip->int_sta_mask);

 return IRQ_HANDLED;
}
