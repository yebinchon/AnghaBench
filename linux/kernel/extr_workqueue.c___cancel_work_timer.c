
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {int func; } ;
struct cwt_wait {TYPE_1__ wait; struct work_struct* work; } ;
typedef int DECLARE_WAIT_QUEUE_HEAD ;


 int ENOENT ;
 int TASK_NORMAL ;
 int TASK_UNINTERRUPTIBLE ;
 int __flush_work (struct work_struct*,int) ;
 int __wake_up (int *,int ,int,struct work_struct*) ;
 int clear_work_data (struct work_struct*) ;
 int cwt_wakefn ;
 int finish_wait (int *,TYPE_1__*) ;
 int init_wait (TYPE_1__*) ;
 int local_irq_restore (unsigned long) ;
 int mark_work_canceling (struct work_struct*) ;
 int prepare_to_wait_exclusive (int *,TYPE_1__*,int ) ;
 int schedule () ;
 int smp_mb () ;
 int try_to_grab_pending (struct work_struct*,int,unsigned long*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 scalar_t__ work_is_canceling (struct work_struct*) ;
 scalar_t__ wq_online ;

__attribute__((used)) static bool __cancel_work_timer(struct work_struct *work, bool is_dwork)
{
 static DECLARE_WAIT_QUEUE_HEAD(cancel_waitq);
 unsigned long flags;
 int ret;

 do {
  ret = try_to_grab_pending(work, is_dwork, &flags);
  if (unlikely(ret == -ENOENT)) {
   struct cwt_wait cwait;

   init_wait(&cwait.wait);
   cwait.wait.func = cwt_wakefn;
   cwait.work = work;

   prepare_to_wait_exclusive(&cancel_waitq, &cwait.wait,
        TASK_UNINTERRUPTIBLE);
   if (work_is_canceling(work))
    schedule();
   finish_wait(&cancel_waitq, &cwait.wait);
  }
 } while (unlikely(ret < 0));


 mark_work_canceling(work);
 local_irq_restore(flags);





 if (wq_online)
  __flush_work(work, 1);

 clear_work_data(work);






 smp_mb();
 if (waitqueue_active(&cancel_waitq))
  __wake_up(&cancel_waitq, TASK_NORMAL, 1, work);

 return ret;
}
