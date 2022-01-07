
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_tmp_graph {int nodes_count; } ;



__attribute__((used)) static int objagg_tmp_graph_edge_index(struct objagg_tmp_graph *graph,
           int parent_index, int index)
{
 return index * graph->nodes_count + parent_index;
}
