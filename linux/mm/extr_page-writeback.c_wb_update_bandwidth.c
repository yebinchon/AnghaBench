
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirty_throttle_control {int member_0; } ;
struct bdi_writeback {int dummy; } ;


 int GDTC_INIT (struct bdi_writeback*) ;
 int __wb_update_bandwidth (struct dirty_throttle_control*,int *,unsigned long,int) ;

void wb_update_bandwidth(struct bdi_writeback *wb, unsigned long start_time)
{
 struct dirty_throttle_control gdtc = { GDTC_INIT(wb) };

 __wb_update_bandwidth(&gdtc, ((void*)0), start_time, 0);
}
