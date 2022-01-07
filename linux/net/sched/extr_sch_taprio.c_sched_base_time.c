
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_gate_list {int base_time; } ;
typedef int ktime_t ;


 int KTIME_MAX ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static ktime_t sched_base_time(const struct sched_gate_list *sched)
{
 if (!sched)
  return KTIME_MAX;

 return ns_to_ktime(sched->base_time);
}
