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
struct o2nm_node {unsigned long nd_num; int /*<<< orphan*/  nd_set_attributes; } ;
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_nodes_bitmap; struct o2nm_node** cl_nodes; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ERANGE ; 
 unsigned long O2NM_MAX_NODES ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_ADDRESS ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_NUM ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_PORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* FUNC6 (struct o2nm_node*) ; 
 struct o2nm_node* FUNC7 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(struct config_item *item, const char *page,
				   size_t count)
{
	struct o2nm_node *node = FUNC7(item);
	struct o2nm_cluster *cluster;
	unsigned long tmp;
	char *p = (char *)page;
	int ret = 0;

	tmp = FUNC3(p, &p, 0);
	if (!p || (*p && (*p != '\n')))
		return -EINVAL;

	if (tmp >= O2NM_MAX_NODES)
		return -ERANGE;

	/* once we're in the cl_nodes tree networking can look us up by
	 * node number and try to use our address and port attributes
	 * to connect to this node.. make sure that they've been set
	 * before writing the node attribute? */
	if (!FUNC5(O2NM_NODE_ATTR_ADDRESS, &node->nd_set_attributes) ||
	    !FUNC5(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
		return -EINVAL; /* XXX */

	FUNC0();
	cluster = FUNC6(node);
	if (!cluster) {
		FUNC1();
		return -EINVAL;
	}

	FUNC8(&cluster->cl_nodes_lock);
	if (cluster->cl_nodes[tmp])
		ret = -EEXIST;
	else if (FUNC4(O2NM_NODE_ATTR_NUM,
			&node->nd_set_attributes))
		ret = -EBUSY;
	else  {
		cluster->cl_nodes[tmp] = node;
		node->nd_num = tmp;
		FUNC2(tmp, cluster->cl_nodes_bitmap);
	}
	FUNC9(&cluster->cl_nodes_lock);
	FUNC1();

	if (ret)
		return ret;

	return count;
}