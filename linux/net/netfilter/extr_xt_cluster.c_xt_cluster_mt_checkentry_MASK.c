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
struct xt_mtchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; struct xt_cluster_match_info* matchinfo; } ;
struct xt_cluster_match_info {unsigned long long total_nodes; unsigned long long node_mask; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 unsigned long long XT_CLUSTER_NODES_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(const struct xt_mtchk_param *par)
{
	struct xt_cluster_match_info *info = par->matchinfo;
	int ret;

	if (info->total_nodes > XT_CLUSTER_NODES_MAX) {
		FUNC1("you have exceeded the maximum number of cluster nodes (%u > %u)\n",
				    info->total_nodes, XT_CLUSTER_NODES_MAX);
		return -EINVAL;
	}
	if (info->node_mask >= (1ULL << info->total_nodes)) {
		FUNC1("node mask cannot exceed total number of nodes\n");
		return -EDOM;
	}

	ret = FUNC0(par->net, par->family);
	if (ret < 0)
		FUNC1("cannot load conntrack support for proto=%u\n",
				    par->family);
	return ret;
}