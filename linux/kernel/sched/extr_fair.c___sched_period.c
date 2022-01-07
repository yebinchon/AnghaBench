
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long sched_nr_latency ;
 unsigned long sysctl_sched_latency ;
 unsigned long sysctl_sched_min_granularity ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 __sched_period(unsigned long nr_running)
{
 if (unlikely(nr_running > sched_nr_latency))
  return nr_running * sysctl_sched_min_granularity;
 else
  return sysctl_sched_latency;
}
