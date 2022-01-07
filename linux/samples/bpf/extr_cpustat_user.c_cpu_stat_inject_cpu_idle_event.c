
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int original_cpumask ;
typedef int cpumask ;
typedef int cpu_set_t ;


 int CPU_ISSET (int,int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int _SC_NPROCESSORS_CONF ;
 int sched_getaffinity (int ,int,int *) ;
 int sched_getcpu () ;
 int sched_setaffinity (int ,int,int *) ;
 int sysconf (int ) ;

__attribute__((used)) static int cpu_stat_inject_cpu_idle_event(void)
{
 int rcpu, i, ret;
 cpu_set_t cpumask;
 cpu_set_t original_cpumask;

 ret = sysconf(_SC_NPROCESSORS_CONF);
 if (ret < 0)
  return -1;

 rcpu = sched_getcpu();
 if (rcpu < 0)
  return -1;


 sched_getaffinity(0, sizeof(original_cpumask), &original_cpumask);

 for (i = 0; i < ret; i++) {


  if (i == rcpu)
   continue;


  if (!CPU_ISSET(i, &original_cpumask))
   continue;

  CPU_ZERO(&cpumask);
  CPU_SET(i, &cpumask);

  sched_setaffinity(0, sizeof(cpumask), &cpumask);
 }


 sched_setaffinity(0, sizeof(original_cpumask), &original_cpumask);
 return 0;
}
