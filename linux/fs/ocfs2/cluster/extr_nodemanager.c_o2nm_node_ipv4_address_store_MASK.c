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
struct rb_node {int dummy; } ;
struct o2nm_node {int /*<<< orphan*/  nd_ipv4_address; int /*<<< orphan*/  nd_ip_node; int /*<<< orphan*/  nd_set_attributes; } ;
struct o2nm_cluster {int /*<<< orphan*/  cl_nodes_lock; int /*<<< orphan*/  cl_node_ip_tree; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ipv4_addr ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct o2nm_cluster*,int /*<<< orphan*/ ,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int FUNC8 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct o2nm_cluster* FUNC10 (struct o2nm_node*) ; 
 struct o2nm_node* FUNC11 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC14(struct config_item *item,
					    const char *page,
					    size_t count)
{
	struct o2nm_node *node = FUNC11(item);
	struct o2nm_cluster *cluster;
	int ret, i;
	struct rb_node **p, *parent;
	unsigned int octets[4];
	__be32 ipv4_addr = 0;

	ret = FUNC8(page, "%3u.%3u.%3u.%3u", &octets[3], &octets[2],
		     &octets[1], &octets[0]);
	if (ret != 4)
		return -EINVAL;

	for (i = 0; i < FUNC0(octets); i++) {
		if (octets[i] > 255)
			return -ERANGE;
		FUNC1(&ipv4_addr, octets[i] << (i * 8));
	}

	FUNC3();
	cluster = FUNC10(node);
	if (!cluster) {
		FUNC5();
		return -EINVAL;
	}

	ret = 0;
	FUNC12(&cluster->cl_nodes_lock);
	if (FUNC4(cluster, ipv4_addr, &p, &parent))
		ret = -EEXIST;
	else if (FUNC9(O2NM_NODE_ATTR_ADDRESS,
			&node->nd_set_attributes))
		ret = -EBUSY;
	else {
		FUNC7(&node->nd_ip_node, parent, p);
		FUNC6(&node->nd_ip_node, &cluster->cl_node_ip_tree);
	}
	FUNC13(&cluster->cl_nodes_lock);
	FUNC5();

	if (ret)
		return ret;

	FUNC2(&node->nd_ipv4_address, &ipv4_addr, sizeof(ipv4_addr));

	return count;
}