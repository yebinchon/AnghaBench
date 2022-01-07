
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sysctl_sched_rt_runtime ;

__attribute__((used)) static inline int rt_bandwidth_enabled(void)
{
 return sysctl_sched_rt_runtime >= 0;
}
