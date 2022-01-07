
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdi_writeback {TYPE_1__* bdi; int avg_write_bandwidth; int state; int b_more_io; int b_io; int b_dirty; } ;
struct TYPE_2__ {int tot_write_bandwidth; } ;


 int WARN_ON_ONCE (int) ;
 int WB_has_dirty_io ;
 scalar_t__ atomic_long_sub_return (int ,int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ wb_has_dirty_io (struct bdi_writeback*) ;

__attribute__((used)) static void wb_io_lists_depopulated(struct bdi_writeback *wb)
{
 if (wb_has_dirty_io(wb) && list_empty(&wb->b_dirty) &&
     list_empty(&wb->b_io) && list_empty(&wb->b_more_io)) {
  clear_bit(WB_has_dirty_io, &wb->state);
  WARN_ON_ONCE(atomic_long_sub_return(wb->avg_write_bandwidth,
     &wb->bdi->tot_write_bandwidth) < 0);
 }
}
