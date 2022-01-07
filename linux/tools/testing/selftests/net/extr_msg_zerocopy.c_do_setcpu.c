
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ cfg_verbose ;
 int error (int,int ,char*,int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int stderr ;

__attribute__((used)) static int do_setcpu(int cpu)
{
 cpu_set_t mask;

 CPU_ZERO(&mask);
 CPU_SET(cpu, &mask);
 if (sched_setaffinity(0, sizeof(mask), &mask))
  error(1, 0, "setaffinity %d", cpu);

 if (cfg_verbose)
  fprintf(stderr, "cpu: %u\n", cpu);

 return 0;
}
