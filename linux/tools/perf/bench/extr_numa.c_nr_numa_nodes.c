
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_nodes; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 TYPE_2__* g ;
 scalar_t__ numa_bitmask_isbitset (int ,int) ;
 int numa_nodes_ptr ;

__attribute__((used)) static int nr_numa_nodes(void)
{
 int i, nr_nodes = 0;

 for (i = 0; i < g->p.nr_nodes; i++) {
  if (numa_bitmask_isbitset(numa_nodes_ptr, i))
   nr_nodes++;
 }

 return nr_nodes;
}
