
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_writeback_work {int list; TYPE_1__* done; } ;
struct bdi_writeback {int work_lock; int dwork; int work_list; int state; } ;
struct TYPE_2__ {int cnt; } ;


 int WB_registered ;
 int atomic_inc (int *) ;
 int bdi_wq ;
 int finish_writeback_work (struct bdi_writeback*,struct wb_writeback_work*) ;
 int list_add_tail (int *,int *) ;
 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_writeback_queue (struct bdi_writeback*,struct wb_writeback_work*) ;

__attribute__((used)) static void wb_queue_work(struct bdi_writeback *wb,
     struct wb_writeback_work *work)
{
 trace_writeback_queue(wb, work);

 if (work->done)
  atomic_inc(&work->done->cnt);

 spin_lock_bh(&wb->work_lock);

 if (test_bit(WB_registered, &wb->state)) {
  list_add_tail(&work->list, &wb->work_list);
  mod_delayed_work(bdi_wq, &wb->dwork, 0);
 } else
  finish_writeback_work(wb, work);

 spin_unlock_bh(&wb->work_lock);
}
