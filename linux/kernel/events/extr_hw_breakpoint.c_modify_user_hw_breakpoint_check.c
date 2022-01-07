
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {scalar_t__ bp_type; } ;
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_2__ {struct arch_hw_breakpoint info; } ;
struct perf_event {TYPE_1__ hw; struct perf_event_attr attr; } ;


 int EINVAL ;
 int hw_breakpoint_copy_attr (struct perf_event_attr*,struct perf_event_attr*) ;
 int hw_breakpoint_parse (struct perf_event*,struct perf_event_attr*,struct arch_hw_breakpoint*) ;
 scalar_t__ memcmp (struct perf_event_attr*,struct perf_event_attr*,int) ;
 int modify_bp_slot (struct perf_event*,scalar_t__,scalar_t__) ;

int
modify_user_hw_breakpoint_check(struct perf_event *bp, struct perf_event_attr *attr,
           bool check)
{
 struct arch_hw_breakpoint hw = { };
 int err;

 err = hw_breakpoint_parse(bp, attr, &hw);
 if (err)
  return err;

 if (check) {
  struct perf_event_attr old_attr;

  old_attr = bp->attr;
  hw_breakpoint_copy_attr(&old_attr, attr);
  if (memcmp(&old_attr, attr, sizeof(*attr)))
   return -EINVAL;
 }

 if (bp->attr.bp_type != attr->bp_type) {
  err = modify_bp_slot(bp, bp->attr.bp_type, attr->bp_type);
  if (err)
   return err;
 }

 hw_breakpoint_copy_attr(&bp->attr, attr);
 bp->hw.info = hw;

 return 0;
}
