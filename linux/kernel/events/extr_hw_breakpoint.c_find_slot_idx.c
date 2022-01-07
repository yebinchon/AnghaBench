
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;


 int HW_BREAKPOINT_RW ;
 int TYPE_DATA ;
 int TYPE_INST ;

__attribute__((used)) static inline enum bp_type_idx find_slot_idx(u64 bp_type)
{
 if (bp_type & HW_BREAKPOINT_RW)
  return TYPE_DATA;

 return TYPE_INST;
}
