
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_entry {int flags; } ;


 int TASK_RUNNING ;
 int WQ_FLAG_WOKEN ;
 int __set_current_state (int ) ;
 int is_kthread_should_stop () ;
 long schedule_timeout (long) ;
 int set_current_state (unsigned int) ;
 int smp_store_mb (int,int) ;

long wait_woken(struct wait_queue_entry *wq_entry, unsigned mode, long timeout)
{






 set_current_state(mode);
 if (!(wq_entry->flags & WQ_FLAG_WOKEN) && !is_kthread_should_stop())
  timeout = schedule_timeout(timeout);
 __set_current_state(TASK_RUNNING);







 smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);

 return timeout;
}
