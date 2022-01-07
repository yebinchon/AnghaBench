
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct kernel_cpustat {unsigned long long* cpustat; } ;


 size_t CPUTIME_IDLE ;
 unsigned long long NSEC_PER_USEC ;
 scalar_t__ cpu_online (int) ;
 unsigned long long get_cpu_idle_time_us (int,int *) ;

__attribute__((used)) static u64 get_idle_time(struct kernel_cpustat *kcs, int cpu)
{
 u64 idle, idle_usecs = -1ULL;

 if (cpu_online(cpu))
  idle_usecs = get_cpu_idle_time_us(cpu, ((void*)0));

 if (idle_usecs == -1ULL)

  idle = kcs->cpustat[CPUTIME_IDLE];
 else
  idle = idle_usecs * NSEC_PER_USEC;

 return idle;
}
