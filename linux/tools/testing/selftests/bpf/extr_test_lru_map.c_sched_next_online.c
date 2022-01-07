
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int nr_cpus ;
 int sched_setaffinity (int,int,int *) ;

__attribute__((used)) static int sched_next_online(int pid, int *next_to_try)
{
 cpu_set_t cpuset;
 int next = *next_to_try;
 int ret = -1;

 while (next < nr_cpus) {
  CPU_ZERO(&cpuset);
  CPU_SET(next++, &cpuset);
  if (!sched_setaffinity(pid, sizeof(cpuset), &cpuset)) {
   ret = 0;
   break;
  }
 }

 *next_to_try = next;
 return ret;
}
