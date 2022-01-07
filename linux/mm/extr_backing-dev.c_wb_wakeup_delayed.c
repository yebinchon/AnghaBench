
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int work_lock; int dwork; int state; } ;


 int WB_registered ;
 int bdi_wq ;
 int dirty_writeback_interval ;
 unsigned long msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void wb_wakeup_delayed(struct bdi_writeback *wb)
{
 unsigned long timeout;

 timeout = msecs_to_jiffies(dirty_writeback_interval * 10);
 spin_lock_bh(&wb->work_lock);
 if (test_bit(WB_registered, &wb->state))
  queue_delayed_work(bdi_wq, &wb->dwork, timeout);
 spin_unlock_bh(&wb->work_lock);
}
