
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_tmp_graph {int edges; } ;


 int __set_bit (int,int ) ;
 int objagg_tmp_graph_edge_index (struct objagg_tmp_graph*,int,int) ;

__attribute__((used)) static void objagg_tmp_graph_edge_set(struct objagg_tmp_graph *graph,
          int parent_index, int index)
{
 int edge_index = objagg_tmp_graph_edge_index(graph, index,
           parent_index);

 __set_bit(edge_index, graph->edges);
}
