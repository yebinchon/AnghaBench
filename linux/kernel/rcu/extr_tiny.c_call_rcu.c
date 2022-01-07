
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_head {struct rcu_head* next; int func; } ;
typedef int rcu_callback_t ;
struct TYPE_2__ {struct rcu_head** curtail; } ;


 int current ;
 int debug_rcu_head_queue (struct rcu_head*) ;
 int is_idle_task (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ rcu_ctrlblk ;
 int resched_cpu (int ) ;
 scalar_t__ unlikely (int ) ;

void call_rcu(struct rcu_head *head, rcu_callback_t func)
{
 unsigned long flags;

 debug_rcu_head_queue(head);
 head->func = func;
 head->next = ((void*)0);

 local_irq_save(flags);
 *rcu_ctrlblk.curtail = head;
 rcu_ctrlblk.curtail = &head->next;
 local_irq_restore(flags);

 if (unlikely(is_idle_task(current))) {

  resched_cpu(0);
 }
}
