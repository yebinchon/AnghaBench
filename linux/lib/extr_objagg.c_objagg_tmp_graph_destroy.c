
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_tmp_graph {struct objagg_tmp_graph* nodes; struct objagg_tmp_graph* edges; } ;


 int kfree (struct objagg_tmp_graph*) ;

__attribute__((used)) static void objagg_tmp_graph_destroy(struct objagg_tmp_graph *graph)
{
 kfree(graph->edges);
 kfree(graph->nodes);
 kfree(graph);
}
