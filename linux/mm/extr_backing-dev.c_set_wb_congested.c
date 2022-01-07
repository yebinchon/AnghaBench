
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback_congested {int state; } ;
typedef enum wb_congested_state { ____Placeholder_wb_congested_state } wb_congested_state ;


 int WB_async_congested ;
 int WB_sync_congested ;
 int atomic_inc (int *) ;
 int * nr_wb_congested ;
 int test_and_set_bit (int,int *) ;

void set_wb_congested(struct bdi_writeback_congested *congested, int sync)
{
 enum wb_congested_state bit;

 bit = sync ? WB_sync_congested : WB_async_congested;
 if (!test_and_set_bit(bit, &congested->state))
  atomic_inc(&nr_wb_congested[sync]);
}
