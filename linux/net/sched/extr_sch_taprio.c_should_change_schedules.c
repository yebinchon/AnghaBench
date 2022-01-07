
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_gate_list {int cycle_time_extension; } ;
typedef int ktime_t ;


 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int sched_base_time (struct sched_gate_list const*) ;

__attribute__((used)) static bool should_change_schedules(const struct sched_gate_list *admin,
        const struct sched_gate_list *oper,
        ktime_t close_time)
{
 ktime_t next_base_time, extension_time;

 if (!admin)
  return 0;

 next_base_time = sched_base_time(admin);




 if (ktime_compare(next_base_time, close_time) <= 0)
  return 1;






 extension_time = ktime_add_ns(close_time, oper->cycle_time_extension);





 if (ktime_compare(next_base_time, extension_time) <= 0)
  return 1;

 return 0;
}
