
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int CPU_SET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int dprintf (char*,unsigned int) ;
 int fprintf (int ,char*) ;
 int getpid () ;
 int perror (char*) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int stderr ;

int set_cpu_affinity(unsigned int cpu)
{
 cpu_set_t cpuset;

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 dprintf("set affinity to cpu #%u\n", cpu);

 if (sched_setaffinity(getpid(), sizeof(cpu_set_t), &cpuset) < 0) {
  perror("sched_setaffinity");
  fprintf(stderr, "warning: unable to set cpu affinity\n");
  return -1;
 }

 return 0;
}
