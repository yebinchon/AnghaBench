
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_event {int dummy; } ;
struct bp_busy_slots {scalar_t__ pinned; int flexible; int member_0; } ;
typedef enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ HW_BREAKPOINT_EMPTY ;
 scalar_t__ HW_BREAKPOINT_INVALID ;
 int constraints_initialized ;
 int fetch_bp_busy_slots (struct bp_busy_slots*,struct perf_event*,int) ;
 int fetch_this_slot (struct bp_busy_slots*,int) ;
 int find_slot_idx (scalar_t__) ;
 int hw_breakpoint_weight (struct perf_event*) ;
 scalar_t__* nr_slots ;
 int toggle_bp_slot (struct perf_event*,int,int,int) ;

__attribute__((used)) static int __reserve_bp_slot(struct perf_event *bp, u64 bp_type)
{
 struct bp_busy_slots slots = {0};
 enum bp_type_idx type;
 int weight;


 if (!constraints_initialized)
  return -ENOMEM;


 if (bp_type == HW_BREAKPOINT_EMPTY ||
     bp_type == HW_BREAKPOINT_INVALID)
  return -EINVAL;

 type = find_slot_idx(bp_type);
 weight = hw_breakpoint_weight(bp);

 fetch_bp_busy_slots(&slots, bp, type);




 fetch_this_slot(&slots, weight);


 if (slots.pinned + (!!slots.flexible) > nr_slots[type])
  return -ENOSPC;

 toggle_bp_slot(bp, 1, type, weight);

 return 0;
}
