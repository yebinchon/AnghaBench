
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irq; } ;
struct irq_desc {scalar_t__ action; TYPE_1__ irq_data; int lock; } ;


 scalar_t__ WARN_ONCE (int,char*,scalar_t__,int ) ;
 int cpu_relax () ;
 scalar_t__ irq_poll_cpu ;
 int irqd_irq_disabled (TYPE_1__*) ;
 scalar_t__ irqd_irq_inprogress (TYPE_1__*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 scalar_t__ smp_processor_id () ;

bool irq_wait_for_poll(struct irq_desc *desc)
{
 if (WARN_ONCE(irq_poll_cpu == smp_processor_id(),
        "irq poll in progress on cpu %d for irq %d\n",
        smp_processor_id(), desc->irq_data.irq))
  return 0;
 return 0;

}
