
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_name_seq {scalar_t__ lower; scalar_t__ upper; } ;



int tipc_sub_check_overlap(struct tipc_name_seq *seq, u32 found_lower,
      u32 found_upper)
{
 if (found_lower < seq->lower)
  found_lower = seq->lower;
 if (found_upper > seq->upper)
  found_upper = seq->upper;
 if (found_lower > found_upper)
  return 0;
 return 1;
}
