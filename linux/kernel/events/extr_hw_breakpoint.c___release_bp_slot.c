
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;
typedef enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;


 int find_slot_idx (int ) ;
 int hw_breakpoint_weight (struct perf_event*) ;
 int toggle_bp_slot (struct perf_event*,int,int,int) ;

__attribute__((used)) static void __release_bp_slot(struct perf_event *bp, u64 bp_type)
{
 enum bp_type_idx type;
 int weight;

 type = find_slot_idx(bp_type);
 weight = hw_breakpoint_weight(bp);
 toggle_bp_slot(bp, 0, type, weight);
}
