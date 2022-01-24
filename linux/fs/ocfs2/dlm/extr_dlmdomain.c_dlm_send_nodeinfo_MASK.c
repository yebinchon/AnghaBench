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
struct o2nm_node {int /*<<< orphan*/  nd_ipv4_port; int /*<<< orphan*/  nd_ipv4_address; int /*<<< orphan*/  nd_num; } ;
struct dlm_query_nodeinfo {int qn_nodenum; int qn_numnodes; int /*<<< orphan*/  qn_namelen; int /*<<< orphan*/  qn_domain; TYPE_1__* qn_nodes; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  ni_ipv4_address; int /*<<< orphan*/  ni_ipv4_port; int /*<<< orphan*/  ni_nodenum; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MOD_KEY ; 
 int /*<<< orphan*/  DLM_QUERY_NODEINFO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int O2NM_MAX_NODES ; 
 int FUNC0 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_query_nodeinfo*) ; 
 struct dlm_query_nodeinfo* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_query_nodeinfo*,int,int,int*) ; 
 struct o2nm_node* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dlm_ctxt *dlm, unsigned long *node_map)
{
	struct dlm_query_nodeinfo *qn = NULL;
	struct o2nm_node *node;
	int ret = 0, status, count, i;

	if (FUNC0(node_map, O2NM_MAX_NODES, 0) >= O2NM_MAX_NODES)
		goto bail;

	qn = FUNC2(sizeof(struct dlm_query_nodeinfo), GFP_KERNEL);
	if (!qn) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto bail;
	}

	for (i = 0, count = 0; i < O2NM_MAX_NODES; ++i) {
		node = FUNC8(i);
		if (!node)
			continue;
		qn->qn_nodes[count].ni_nodenum = node->nd_num;
		qn->qn_nodes[count].ni_ipv4_port = node->nd_ipv4_port;
		qn->qn_nodes[count].ni_ipv4_address = node->nd_ipv4_address;
		FUNC4(0, "Node %3d, %pI4:%u\n", node->nd_num,
		     &(node->nd_ipv4_address), FUNC6(node->nd_ipv4_port));
		++count;
		FUNC9(node);
	}

	qn->qn_nodenum = dlm->node_num;
	qn->qn_numnodes = count;
	qn->qn_namelen = FUNC10(dlm->name);
	FUNC3(qn->qn_domain, dlm->name, qn->qn_namelen);

	i = -1;
	while ((i = FUNC0(node_map, O2NM_MAX_NODES,
				  i + 1)) < O2NM_MAX_NODES) {
		if (i == dlm->node_num)
			continue;

		FUNC4(0, "Sending nodeinfo to node %d\n", i);

		ret = FUNC7(DLM_QUERY_NODEINFO, DLM_MOD_KEY,
					 qn, sizeof(struct dlm_query_nodeinfo),
					 i, &status);
		if (ret >= 0)
			ret = status;
		if (ret) {
			FUNC4(ML_ERROR, "node mismatch %d, node %d\n", ret, i);
			break;
		}
	}

bail:
	FUNC1(qn);
	return ret;
}