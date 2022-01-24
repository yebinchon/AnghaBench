#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct objagg_tmp_graph {int /*<<< orphan*/  edges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct objagg_tmp_graph*,int,int) ; 

__attribute__((used)) static void FUNC2(struct objagg_tmp_graph *graph,
				      int parent_index, int index)
{
	int edge_index = FUNC1(graph, index,
						     parent_index);

	FUNC0(edge_index, graph->edges);
}