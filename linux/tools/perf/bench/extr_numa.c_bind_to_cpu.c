
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int orig_mask ;
typedef int mask ;
typedef int cpu_set_t ;
struct TYPE_3__ {int nr_cpus; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int BUG_ON (int) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 TYPE_2__* g ;
 int sched_getaffinity (int ,int,int *) ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static cpu_set_t bind_to_cpu(int target_cpu)
{
 cpu_set_t orig_mask, mask;
 int ret;

 ret = sched_getaffinity(0, sizeof(orig_mask), &orig_mask);
 BUG_ON(ret);

 CPU_ZERO(&mask);

 if (target_cpu == -1) {
  int cpu;

  for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
   CPU_SET(cpu, &mask);
 } else {
  BUG_ON(target_cpu < 0 || target_cpu >= g->p.nr_cpus);
  CPU_SET(target_cpu, &mask);
 }

 ret = sched_setaffinity(0, sizeof(mask), &mask);
 BUG_ON(ret);

 return orig_mask;
}
