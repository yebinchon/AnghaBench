
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_head {int dummy; } ;


 int arch_irq_work_has_interrupt () ;
 int irq_work_run_list (struct llist_head*) ;
 int lazy_list ;
 int llist_empty (struct llist_head*) ;
 int raised_list ;
 struct llist_head* this_cpu_ptr (int *) ;

void irq_work_tick(void)
{
 struct llist_head *raised = this_cpu_ptr(&raised_list);

 if (!llist_empty(raised) && !arch_irq_work_has_interrupt())
  irq_work_run_list(raised);
 irq_work_run_list(this_cpu_ptr(&lazy_list));
}
