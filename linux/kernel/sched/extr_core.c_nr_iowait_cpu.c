
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_iowait; } ;


 unsigned long atomic_read (int *) ;
 TYPE_1__* cpu_rq (int) ;

unsigned long nr_iowait_cpu(int cpu)
{
 return atomic_read(&cpu_rq(cpu)->nr_iowait);
}
