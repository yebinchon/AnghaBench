
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int dummy; } ;
struct kthread_flush_work {int done; int work; int member_1; int member_0; } ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int KTHREAD_WORK_INIT (int ,int ) ;
 int kthread_flush_work_fn ;
 int kthread_queue_work (struct kthread_worker*,int *) ;
 int wait_for_completion (int *) ;

void kthread_flush_worker(struct kthread_worker *worker)
{
 struct kthread_flush_work fwork = {
  KTHREAD_WORK_INIT(fwork.work, kthread_flush_work_fn),
  COMPLETION_INITIALIZER_ONSTACK(fwork.done),
 };

 kthread_queue_work(worker, &fwork.work);
 wait_for_completion(&fwork.done);
}
