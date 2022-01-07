
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {struct Qdisc** output_queue_tailp; } ;
struct Qdisc {struct Qdisc* next_sched; } ;


 int NET_TX_SOFTIRQ ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raise_softirq_irqoff (int ) ;
 int softnet_data ;
 struct softnet_data* this_cpu_ptr (int *) ;

__attribute__((used)) static void __netif_reschedule(struct Qdisc *q)
{
 struct softnet_data *sd;
 unsigned long flags;

 local_irq_save(flags);
 sd = this_cpu_ptr(&softnet_data);
 q->next_sched = ((void*)0);
 *sd->output_queue_tailp = q;
 sd->output_queue_tailp = &q->next_sched;
 raise_softirq_irqoff(NET_TX_SOFTIRQ);
 local_irq_restore(flags);
}
