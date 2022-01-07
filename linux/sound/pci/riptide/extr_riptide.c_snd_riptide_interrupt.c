
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_riptide {TYPE_1__* rmidi; int handled_irqs; int riptide_tq; int received_irqs; struct cmdif* cif; } ;
struct cmdif {int hwport; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int private_data; } ;


 int IRQ_HANDLED ;
 scalar_t__ IS_EOBIRQ (int ) ;
 scalar_t__ IS_EOCIRQ (int ) ;
 scalar_t__ IS_EOSIRQ (int ) ;
 scalar_t__ IS_MPUIRQ (int ) ;
 int SET_AIACK (int ) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
snd_riptide_interrupt(int irq, void *dev_id)
{
 struct snd_riptide *chip = dev_id;
 struct cmdif *cif = chip->cif;

 if (cif) {
  chip->received_irqs++;
  if (IS_EOBIRQ(cif->hwport) || IS_EOSIRQ(cif->hwport) ||
      IS_EOCIRQ(cif->hwport)) {
   chip->handled_irqs++;
   tasklet_schedule(&chip->riptide_tq);
  }
  if (chip->rmidi && IS_MPUIRQ(cif->hwport)) {
   chip->handled_irqs++;
   snd_mpu401_uart_interrupt(irq,
        chip->rmidi->private_data);
  }
  SET_AIACK(cif->hwport);
 }
 return IRQ_HANDLED;
}
