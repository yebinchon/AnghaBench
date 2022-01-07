
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * pi_blocked_on; int * pi_top_task; int pi_waiters; int pi_lock; } ;


 int RB_ROOT_CACHED ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static void rt_mutex_init_task(struct task_struct *p)
{
 raw_spin_lock_init(&p->pi_lock);





}
