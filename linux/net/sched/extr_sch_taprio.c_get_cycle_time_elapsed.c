
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_gate_list {int cycle_time; int base_time; } ;
typedef int s32 ;
typedef int ktime_t ;


 int div_s64_rem (int ,int ,int *) ;
 int ktime_sub (int ,int ) ;

__attribute__((used)) static s32 get_cycle_time_elapsed(struct sched_gate_list *sched, ktime_t time)
{
 ktime_t time_since_sched_start;
 s32 time_elapsed;

 time_since_sched_start = ktime_sub(time, sched->base_time);
 div_s64_rem(time_since_sched_start, sched->cycle_time, &time_elapsed);

 return time_elapsed;
}
