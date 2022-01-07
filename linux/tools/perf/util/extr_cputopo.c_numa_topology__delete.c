
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct numa_topology {size_t nr; TYPE_1__* nodes; } ;
struct TYPE_2__ {int cpus; } ;


 int free (struct numa_topology*) ;
 int zfree (int *) ;

void numa_topology__delete(struct numa_topology *tp)
{
 u32 i;

 for (i = 0; i < tp->nr; i++)
  zfree(&tp->nodes[i].cpus);

 free(tp);
}
