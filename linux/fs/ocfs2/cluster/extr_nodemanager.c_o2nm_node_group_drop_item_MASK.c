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
struct o2nm_node {size_t nd_num; int /*<<< orphan*/  nd_item; int /*<<< orphan*/  nd_ip_node; scalar_t__ nd_ipv4_address; } ;
struct o2nm_cluster {scalar_t__ cl_local_node; int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_nodes_bitmap; struct o2nm_node** cl_nodes; int /*<<< orphan*/  cl_node_ip_tree; scalar_t__ cl_has_local; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_CLUSTER ; 
 scalar_t__ O2NM_INVALID_NODE_NUM ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* FUNC7 (int /*<<< orphan*/ ) ; 
 struct o2nm_node* FUNC8 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct config_group *group,
				      struct config_item *item)
{
	struct o2nm_node *node = FUNC8(item);
	struct o2nm_cluster *cluster = FUNC7(group->cg_item.ci_parent);

	if (cluster->cl_nodes[node->nd_num] == node) {
		FUNC4(node);

		if (cluster->cl_has_local &&
		    (cluster->cl_local_node == node->nd_num)) {
			cluster->cl_has_local = 0;
			cluster->cl_local_node = O2NM_INVALID_NODE_NUM;
			FUNC5(node);
		}
	}

	/* XXX call into net to stop this node from trading messages */

	FUNC9(&cluster->cl_nodes_lock);

	/* XXX sloppy */
	if (node->nd_ipv4_address)
		FUNC6(&node->nd_ip_node, &cluster->cl_node_ip_tree);

	/* nd_num might be 0 if the node number hasn't been set.. */
	if (cluster->cl_nodes[node->nd_num] == node) {
		cluster->cl_nodes[node->nd_num] = NULL;
		FUNC0(node->nd_num, cluster->cl_nodes_bitmap);
	}
	FUNC10(&cluster->cl_nodes_lock);

	FUNC3(ML_CLUSTER, "o2nm: Unregistered node %s\n",
	     FUNC1(&node->nd_item));

	FUNC2(item);
}