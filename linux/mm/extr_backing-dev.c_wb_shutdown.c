
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int work_list; int dwork; int work_lock; int state; } ;


 int WARN_ON (int) ;
 int WB_registered ;
 int bdi_wq ;
 int cgwb_remove_from_bdi_list (struct bdi_writeback*) ;
 int flush_delayed_work (int *) ;
 int list_empty (int *) ;
 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void wb_shutdown(struct bdi_writeback *wb)
{

 spin_lock_bh(&wb->work_lock);
 if (!test_and_clear_bit(WB_registered, &wb->state)) {
  spin_unlock_bh(&wb->work_lock);
  return;
 }
 spin_unlock_bh(&wb->work_lock);

 cgwb_remove_from_bdi_list(wb);





 mod_delayed_work(bdi_wq, &wb->dwork, 0);
 flush_delayed_work(&wb->dwork);
 WARN_ON(!list_empty(&wb->work_list));
}
