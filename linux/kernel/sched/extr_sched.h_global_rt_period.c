
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NSEC_PER_USEC ;
 scalar_t__ sysctl_sched_rt_period ;

__attribute__((used)) static inline u64 global_rt_period(void)
{
 return (u64)sysctl_sched_rt_period * NSEC_PER_USEC;
}
