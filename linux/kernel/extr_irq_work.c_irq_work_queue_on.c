
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int llnode; } ;


 int WARN_ON_ONCE (int ) ;
 int __irq_work_queue_local (struct irq_work*) ;
 int arch_send_call_function_single_ipi (int) ;
 int cpu_is_offline (int) ;
 int in_nmi () ;
 int irq_work_claim (struct irq_work*) ;
 int irq_work_queue (struct irq_work*) ;
 scalar_t__ llist_add (int *,int *) ;
 int per_cpu (int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int raised_list ;
 int smp_processor_id () ;

bool irq_work_queue_on(struct irq_work *work, int cpu)
{

 return irq_work_queue(work);
}
