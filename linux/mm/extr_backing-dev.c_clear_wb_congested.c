
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct bdi_writeback_congested {int state; } ;
typedef enum wb_congested_state { ____Placeholder_wb_congested_state } wb_congested_state ;


 int WB_async_congested ;
 int WB_sync_congested ;
 int atomic_dec (int *) ;
 int * congestion_wqh ;
 int * nr_wb_congested ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_and_clear_bit (int,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void clear_wb_congested(struct bdi_writeback_congested *congested, int sync)
{
 wait_queue_head_t *wqh = &congestion_wqh[sync];
 enum wb_congested_state bit;

 bit = sync ? WB_sync_congested : WB_async_congested;
 if (test_and_clear_bit(bit, &congested->state))
  atomic_dec(&nr_wb_congested[sync]);
 smp_mb__after_atomic();
 if (waitqueue_active(wqh))
  wake_up(wqh);
}
