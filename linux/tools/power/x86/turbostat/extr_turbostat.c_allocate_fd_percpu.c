
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_cpu_num; } ;


 int * calloc (scalar_t__,int) ;
 int err (int,char*) ;
 int * fd_percpu ;
 TYPE_1__ topo ;

void allocate_fd_percpu(void)
{
 fd_percpu = calloc(topo.max_cpu_num + 1, sizeof(int));
 if (fd_percpu == ((void*)0))
  err(-1, "calloc fd_percpu");
}
