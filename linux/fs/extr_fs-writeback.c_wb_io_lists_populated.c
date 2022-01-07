
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdi_writeback {TYPE_1__* bdi; int avg_write_bandwidth; int state; } ;
struct TYPE_2__ {int tot_write_bandwidth; } ;


 int WARN_ON_ONCE (int) ;
 int WB_has_dirty_io ;
 int atomic_long_add (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ wb_has_dirty_io (struct bdi_writeback*) ;

__attribute__((used)) static bool wb_io_lists_populated(struct bdi_writeback *wb)
{
 if (wb_has_dirty_io(wb)) {
  return 0;
 } else {
  set_bit(WB_has_dirty_io, &wb->state);
  WARN_ON_ONCE(!wb->avg_write_bandwidth);
  atomic_long_add(wb->avg_write_bandwidth,
    &wb->bdi->tot_write_bandwidth);
  return 1;
 }
}
