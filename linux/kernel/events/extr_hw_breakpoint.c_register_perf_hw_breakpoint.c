
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_2__ {struct arch_hw_breakpoint info; } ;
struct perf_event {TYPE_1__ hw; int attr; } ;


 int hw_breakpoint_parse (struct perf_event*,int *,struct arch_hw_breakpoint*) ;
 int release_bp_slot (struct perf_event*) ;
 int reserve_bp_slot (struct perf_event*) ;

int register_perf_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint hw = { };
 int err;

 err = reserve_bp_slot(bp);
 if (err)
  return err;

 err = hw_breakpoint_parse(bp, &bp->attr, &hw);
 if (err) {
  release_bp_slot(bp);
  return err;
 }

 bp->hw.info = hw;

 return 0;
}
