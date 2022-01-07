
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_tmp_graph {int edges; } ;


 int objagg_tmp_graph_edge_index (struct objagg_tmp_graph*,int,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static bool objagg_tmp_graph_is_edge(struct objagg_tmp_graph *graph,
         int parent_index, int index)
{
 int edge_index = objagg_tmp_graph_edge_index(graph, index,
           parent_index);

 return test_bit(edge_index, graph->edges);
}
