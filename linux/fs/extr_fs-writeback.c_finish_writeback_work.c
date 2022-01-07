
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct wb_writeback_work {scalar_t__ auto_free; struct wb_completion* done; } ;
struct wb_completion {int cnt; int * waitq; } ;
struct bdi_writeback {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct wb_writeback_work*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void finish_writeback_work(struct bdi_writeback *wb,
      struct wb_writeback_work *work)
{
 struct wb_completion *done = work->done;

 if (work->auto_free)
  kfree(work);
 if (done) {
  wait_queue_head_t *waitq = done->waitq;


  if (atomic_dec_and_test(&done->cnt))
   wake_up_all(waitq);
 }
}
