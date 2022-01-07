
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int work_lock; int dwork; int state; } ;


 int WB_registered ;
 int bdi_wq ;
 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void wb_wakeup(struct bdi_writeback *wb)
{
 spin_lock_bh(&wb->work_lock);
 if (test_bit(WB_registered, &wb->state))
  mod_delayed_work(bdi_wq, &wb->dwork, 0);
 spin_unlock_bh(&wb->work_lock);
}
