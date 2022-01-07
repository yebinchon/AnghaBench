
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct perf_event {int destroy; TYPE_1__ attr; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_TYPE_BREAKPOINT ;
 int bp_perf_event_destroy ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int register_perf_hw_breakpoint (struct perf_event*) ;

__attribute__((used)) static int hw_breakpoint_event_init(struct perf_event *bp)
{
 int err;

 if (bp->attr.type != PERF_TYPE_BREAKPOINT)
  return -ENOENT;




 if (has_branch_stack(bp))
  return -EOPNOTSUPP;

 err = register_perf_hw_breakpoint(bp);
 if (err)
  return err;

 bp->destroy = bp_perf_event_destroy;

 return 0;
}
