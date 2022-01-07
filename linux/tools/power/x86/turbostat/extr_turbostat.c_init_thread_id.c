
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread_id; } ;


 TYPE_1__* cpus ;

int init_thread_id(int cpu)
{
 cpus[cpu].thread_id = -1;
 return 0;
}
