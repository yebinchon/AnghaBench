
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_head {int dummy; } ;


 int WARN_ON_ONCE (int ) ;
 scalar_t__ arch_irq_work_has_interrupt () ;
 int cpu_is_offline (int ) ;
 int lazy_list ;
 scalar_t__ llist_empty (struct llist_head*) ;
 int raised_list ;
 int smp_processor_id () ;
 struct llist_head* this_cpu_ptr (int *) ;

bool irq_work_needs_cpu(void)
{
 struct llist_head *raised, *lazy;

 raised = this_cpu_ptr(&raised_list);
 lazy = this_cpu_ptr(&lazy_list);

 if (llist_empty(raised) || arch_irq_work_has_interrupt())
  if (llist_empty(lazy))
   return 0;


 WARN_ON_ONCE(cpu_is_offline(smp_processor_id()));

 return 1;
}
