
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_cpus; } ;


 int free_all_buffers () ;
 int printf (char*,int) ;
 int setup_all_buffers () ;
 TYPE_1__ topo ;

void re_initialize(void)
{
 free_all_buffers();
 setup_all_buffers();
 printf("turbostat: re-initialized with num_cpus %d\n", topo.num_cpus);
}
