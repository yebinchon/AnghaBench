
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_gate_list {int cycle_close_time; int entries; } ;
struct sched_entry {int close_time; int list; } ;


 scalar_t__ ktime_compare (int ,int ) ;
 scalar_t__ list_is_last (int *,int *) ;

__attribute__((used)) static bool should_restart_cycle(const struct sched_gate_list *oper,
     const struct sched_entry *entry)
{
 if (list_is_last(&entry->list, &oper->entries))
  return 1;

 if (ktime_compare(entry->close_time, oper->cycle_close_time) == 0)
  return 1;

 return 0;
}
