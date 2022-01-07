
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_tmp_node {scalar_t__ crossed_out; } ;
struct objagg_tmp_graph {int nodes_count; struct objagg_tmp_node* nodes; } ;


 unsigned int objagg_tmp_graph_node_weight (struct objagg_tmp_graph*,int) ;

__attribute__((used)) static int objagg_tmp_graph_node_max_weight(struct objagg_tmp_graph *graph)
{
 struct objagg_tmp_node *node;
 unsigned int max_weight = 0;
 unsigned int weight;
 int max_index = -1;
 int i;

 for (i = 0; i < graph->nodes_count; i++) {
  node = &graph->nodes[i];
  if (node->crossed_out)
   continue;
  weight = objagg_tmp_graph_node_weight(graph, i);
  if (weight >= max_weight) {
   max_weight = weight;
   max_index = i;
  }
 }
 return max_index;
}
