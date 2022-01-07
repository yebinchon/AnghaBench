
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ cpu; scalar_t__ group_index; } ;



__attribute__((used)) static bool
perf_event_groups_less(struct perf_event *left, struct perf_event *right)
{
 if (left->cpu < right->cpu)
  return 1;
 if (left->cpu > right->cpu)
  return 0;

 if (left->group_index < right->group_index)
  return 1;
 if (left->group_index > right->group_index)
  return 0;

 return 0;
}
