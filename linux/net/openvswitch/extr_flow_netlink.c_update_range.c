
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow_key_range {size_t start; size_t end; } ;
struct sw_flow_match {TYPE_1__* mask; struct sw_flow_key_range range; } ;
struct TYPE_2__ {struct sw_flow_key_range range; } ;


 size_t rounddown (size_t,int) ;
 size_t roundup (size_t,int) ;

__attribute__((used)) static void update_range(struct sw_flow_match *match,
    size_t offset, size_t size, bool is_mask)
{
 struct sw_flow_key_range *range;
 size_t start = rounddown(offset, sizeof(long));
 size_t end = roundup(offset + size, sizeof(long));

 if (!is_mask)
  range = &match->range;
 else
  range = &match->mask->range;

 if (range->start == range->end) {
  range->start = start;
  range->end = end;
  return;
 }

 if (range->start > start)
  range->start = start;

 if (range->end < end)
  range->end = end;
}
