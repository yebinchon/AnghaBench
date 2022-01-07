
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
typedef int spinlock_t ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue_exclusive (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static inline void xlog_wait(wait_queue_head_t *wq, spinlock_t *lock)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue_exclusive(wq, &wait);
 __set_current_state(TASK_UNINTERRUPTIBLE);
 spin_unlock(lock);
 schedule();
 remove_wait_queue(wq, &wait);
}
