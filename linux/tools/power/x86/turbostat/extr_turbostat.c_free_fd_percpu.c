
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cpu_num; } ;


 int close (scalar_t__) ;
 scalar_t__* fd_percpu ;
 int free (scalar_t__*) ;
 TYPE_1__ topo ;

void free_fd_percpu(void)
{
 int i;

 for (i = 0; i < topo.max_cpu_num + 1; ++i) {
  if (fd_percpu[i] != 0)
   close(fd_percpu[i]);
 }

 free(fd_percpu);
}
