
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int stderr ;

__attribute__((used)) static int set_cpuaffinity(int cpuid)
{
 cpu_set_t mask;

 CPU_ZERO(&mask);
 CPU_SET(cpuid, &mask);
 if (sched_setaffinity(0, sizeof(mask), &mask)) {
  if (errno != EINVAL) {
   fprintf(stderr, "setaffinity %d\n", cpuid);
   exit(1);
  }
  return 1;
 }

 return 0;
}
