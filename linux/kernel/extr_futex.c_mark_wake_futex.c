
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_q_head {int dummy; } ;
struct task_struct {int dummy; } ;
struct futex_q {int lock_ptr; scalar_t__ rt_waiter; scalar_t__ pi_state; struct task_struct* task; } ;


 scalar_t__ WARN (int,char*) ;
 int __unqueue_futex (struct futex_q*) ;
 int get_task_struct (struct task_struct*) ;
 int smp_store_release (int *,int *) ;
 int wake_q_add_safe (struct wake_q_head*,struct task_struct*) ;

__attribute__((used)) static void mark_wake_futex(struct wake_q_head *wake_q, struct futex_q *q)
{
 struct task_struct *p = q->task;

 if (WARN(q->pi_state || q->rt_waiter, "refusing to wake PI futex\n"))
  return;

 get_task_struct(p);
 __unqueue_futex(q);







 smp_store_release(&q->lock_ptr, ((void*)0));





 wake_q_add_safe(wake_q, p);
}
