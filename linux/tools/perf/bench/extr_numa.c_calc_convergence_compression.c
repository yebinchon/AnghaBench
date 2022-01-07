
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_proc; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 unsigned int count_process_nodes (int) ;
 TYPE_2__* g ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int tprintf (char*,unsigned int,unsigned int) ;

__attribute__((used)) static void calc_convergence_compression(int *strong)
{
 unsigned int nodes_min, nodes_max;
 int p;

 nodes_min = -1;
 nodes_max = 0;

 for (p = 0; p < g->p.nr_proc; p++) {
  unsigned int nodes = count_process_nodes(p);

  if (!nodes) {
   *strong = 0;
   return;
  }

  nodes_min = min(nodes, nodes_min);
  nodes_max = max(nodes, nodes_max);
 }


 if (nodes_min == 1 && nodes_max == 1) {
  *strong = 1;
 } else {
  *strong = 0;
  tprintf(" {%d-%d}", nodes_min, nodes_max);
 }
}
