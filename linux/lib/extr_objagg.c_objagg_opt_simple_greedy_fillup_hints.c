
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_tmp_node {int crossed_out; int objagg_obj; } ;
struct objagg_tmp_graph {int nodes_count; struct objagg_tmp_node* nodes; } ;
struct objagg_hints_node {int dummy; } ;
struct objagg_hints {int dummy; } ;
struct objagg {TYPE_1__* ops; } ;
struct TYPE_2__ {int obj_size; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct objagg_hints_node*) ;
 int PTR_ERR (struct objagg_hints_node*) ;
 struct objagg_hints_node* objagg_hints_node_create (struct objagg_hints*,int ,int ,struct objagg_hints_node*) ;
 struct objagg_tmp_graph* objagg_tmp_graph_create (struct objagg*) ;
 int objagg_tmp_graph_destroy (struct objagg_tmp_graph*) ;
 int objagg_tmp_graph_is_edge (struct objagg_tmp_graph*,int,int) ;
 int objagg_tmp_graph_node_max_weight (struct objagg_tmp_graph*) ;

__attribute__((used)) static int
objagg_opt_simple_greedy_fillup_hints(struct objagg_hints *objagg_hints,
          struct objagg *objagg)
{
 struct objagg_hints_node *hnode, *parent_hnode;
 struct objagg_tmp_graph *graph;
 struct objagg_tmp_node *node;
 int index;
 int j;
 int err;

 graph = objagg_tmp_graph_create(objagg);
 if (!graph)
  return -ENOMEM;




 while ((index = objagg_tmp_graph_node_max_weight(graph)) != -1) {
  node = &graph->nodes[index];
  node->crossed_out = 1;
  hnode = objagg_hints_node_create(objagg_hints,
       node->objagg_obj,
       objagg->ops->obj_size,
       ((void*)0));
  if (IS_ERR(hnode)) {
   err = PTR_ERR(hnode);
   goto out;
  }
  parent_hnode = hnode;
  for (j = 0; j < graph->nodes_count; j++) {
   if (!objagg_tmp_graph_is_edge(graph, index, j))
    continue;
   node = &graph->nodes[j];
   if (node->crossed_out)
    continue;
   node->crossed_out = 1;
   hnode = objagg_hints_node_create(objagg_hints,
        node->objagg_obj,
        objagg->ops->obj_size,
        parent_hnode);
   if (IS_ERR(hnode)) {
    err = PTR_ERR(hnode);
    goto out;
   }
  }
 }

 err = 0;
out:
 objagg_tmp_graph_destroy(graph);
 return err;
}
