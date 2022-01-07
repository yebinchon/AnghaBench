
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_gate_list {int base_time; int cycle_time_extension; scalar_t__ cycle_time; } ;
struct sched_entry {scalar_t__ interval; } ;
typedef scalar_t__ s32 ;
typedef int ktime_t ;


 scalar_t__ get_cycle_time_elapsed (struct sched_gate_list*,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_add_ns (int ,scalar_t__) ;
 scalar_t__ ktime_after (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;

__attribute__((used)) static ktime_t get_interval_end_time(struct sched_gate_list *sched,
         struct sched_gate_list *admin,
         struct sched_entry *entry,
         ktime_t intv_start)
{
 s32 cycle_elapsed = get_cycle_time_elapsed(sched, intv_start);
 ktime_t intv_end, cycle_ext_end, cycle_end;

 cycle_end = ktime_add_ns(intv_start, sched->cycle_time - cycle_elapsed);
 intv_end = ktime_add_ns(intv_start, entry->interval);
 cycle_ext_end = ktime_add(cycle_end, sched->cycle_time_extension);

 if (ktime_before(intv_end, cycle_end))
  return intv_end;
 else if (admin && admin != sched &&
   ktime_after(admin->base_time, cycle_end) &&
   ktime_before(admin->base_time, cycle_ext_end))
  return admin->base_time;
 else
  return cycle_end;
}
