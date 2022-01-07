
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread; } ;


 TYPE_1__ cpu_stopper ;
 int per_cpu (int ,unsigned int) ;
 int sched_set_stop_task (unsigned int,int ) ;

__attribute__((used)) static void cpu_stop_create(unsigned int cpu)
{
 sched_set_stop_task(cpu, per_cpu(cpu_stopper.thread, cpu));
}
