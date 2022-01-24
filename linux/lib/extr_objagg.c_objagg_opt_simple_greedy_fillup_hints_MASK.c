#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct objagg_tmp_node {int crossed_out; int /*<<< orphan*/  objagg_obj; } ;
struct objagg_tmp_graph {int nodes_count; struct objagg_tmp_node* nodes; } ;
struct objagg_hints_node {int dummy; } ;
struct objagg_hints {int dummy; } ;
struct objagg {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct objagg_hints_node*) ; 
 int FUNC1 (struct objagg_hints_node*) ; 
 struct objagg_hints_node* FUNC2 (struct objagg_hints*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct objagg_hints_node*) ; 
 struct objagg_tmp_graph* FUNC3 (struct objagg*) ; 
 int /*<<< orphan*/  FUNC4 (struct objagg_tmp_graph*) ; 
 int /*<<< orphan*/  FUNC5 (struct objagg_tmp_graph*,int,int) ; 
 int FUNC6 (struct objagg_tmp_graph*) ; 

__attribute__((used)) static int
FUNC7(struct objagg_hints *objagg_hints,
				      struct objagg *objagg)
{
	struct objagg_hints_node *hnode, *parent_hnode;
	struct objagg_tmp_graph *graph;
	struct objagg_tmp_node *node;
	int index;
	int j;
	int err;

	graph = FUNC3(objagg);
	if (!graph)
		return -ENOMEM;

	/* Find the nodes from the ones that can accommodate most users
	 * and cross them out of the graph. Save them to the hint list.
	 */
	while ((index = FUNC6(graph)) != -1) {
		node = &graph->nodes[index];
		node->crossed_out = true;
		hnode = FUNC2(objagg_hints,
						 node->objagg_obj,
						 objagg->ops->obj_size,
						 NULL);
		if (FUNC0(hnode)) {
			err = FUNC1(hnode);
			goto out;
		}
		parent_hnode = hnode;
		for (j = 0; j < graph->nodes_count; j++) {
			if (!FUNC5(graph, index, j))
				continue;
			node = &graph->nodes[j];
			if (node->crossed_out)
				continue;
			node->crossed_out = true;
			hnode = FUNC2(objagg_hints,
							 node->objagg_obj,
							 objagg->ops->obj_size,
							 parent_hnode);
			if (FUNC0(hnode)) {
				err = FUNC1(hnode);
				goto out;
			}
		}
	}

	err = 0;
out:
	FUNC4(graph);
	return err;
}