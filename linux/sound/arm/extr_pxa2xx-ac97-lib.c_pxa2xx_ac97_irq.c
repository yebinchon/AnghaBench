
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 long GSR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MCSR ;
 int MCSR_EOC ;
 int MISR ;
 int MISR_EOC ;
 int PISR ;
 int PISR_EOC ;
 scalar_t__ cpu_is_pxa27x () ;
 long gsr_bits ;
 int gsr_wq ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t pxa2xx_ac97_irq(int irq, void *dev_id)
{
 long status;

 status = GSR;
 if (status) {
  GSR = status;
  gsr_bits |= status;
  wake_up(&gsr_wq);




  if (cpu_is_pxa27x()) {
   MISR = MISR_EOC;
   PISR = PISR_EOC;
   MCSR = MCSR_EOC;
  }

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
