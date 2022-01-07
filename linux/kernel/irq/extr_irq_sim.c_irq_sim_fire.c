
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; int pending; } ;
struct irq_sim {TYPE_2__ work_ctx; TYPE_1__* irqs; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;


 int irq_work_queue (int *) ;
 int set_bit (unsigned int,int ) ;

void irq_sim_fire(struct irq_sim *sim, unsigned int offset)
{
 if (sim->irqs[offset].enabled) {
  set_bit(offset, sim->work_ctx.pending);
  irq_work_queue(&sim->work_ctx.work);
 }
}
