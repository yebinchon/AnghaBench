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
struct config_group {int dummy; } ;
struct o2nm_node_group {struct config_group cl_group; int /*<<< orphan*/  cl_fence_method; int /*<<< orphan*/  cl_keepalive_delay_ms; int /*<<< orphan*/  cl_idle_timeout_ms; int /*<<< orphan*/  cl_reconnect_delay_ms; int /*<<< orphan*/  cl_node_ip_tree; int /*<<< orphan*/  cl_nodes_lock; struct config_group ns_group; } ;
struct o2nm_cluster {struct config_group cl_group; int /*<<< orphan*/  cl_fence_method; int /*<<< orphan*/  cl_keepalive_delay_ms; int /*<<< orphan*/  cl_idle_timeout_ms; int /*<<< orphan*/  cl_reconnect_delay_ms; int /*<<< orphan*/  cl_node_ip_tree; int /*<<< orphan*/  cl_nodes_lock; struct config_group ns_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  O2NET_IDLE_TIMEOUT_MS_DEFAULT ; 
 int /*<<< orphan*/  O2NET_KEEPALIVE_DELAY_MS_DEFAULT ; 
 int /*<<< orphan*/  O2NET_RECONNECT_DELAY_MS_DEFAULT ; 
 int /*<<< orphan*/  O2NM_FENCE_RESET ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct o2nm_node_group*) ; 
 struct o2nm_node_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct config_group* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct config_group*) ; 
 int /*<<< orphan*/  o2nm_cluster_type ; 
 int /*<<< orphan*/  o2nm_node_group_type ; 
 struct o2nm_node_group* o2nm_single_cluster ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct config_group *FUNC8(struct config_group *group,
							  const char *name)
{
	struct o2nm_cluster *cluster = NULL;
	struct o2nm_node_group *ns = NULL;
	struct config_group *o2hb_group = NULL, *ret = NULL;

	/* this runs under the parent dir's i_mutex; there can be only
	 * one caller in here at a time */
	if (o2nm_single_cluster)
		return FUNC0(-ENOSPC);

	cluster = FUNC4(sizeof(struct o2nm_cluster), GFP_KERNEL);
	ns = FUNC4(sizeof(struct o2nm_node_group), GFP_KERNEL);
	o2hb_group = FUNC5();
	if (cluster == NULL || ns == NULL || o2hb_group == NULL)
		goto out;

	FUNC1(&cluster->cl_group, name,
				    &o2nm_cluster_type);
	FUNC2(&ns->ns_group, &cluster->cl_group);

	FUNC1(&ns->ns_group, "node",
				    &o2nm_node_group_type);
	FUNC2(o2hb_group, &cluster->cl_group);

	FUNC7(&cluster->cl_nodes_lock);
	cluster->cl_node_ip_tree = RB_ROOT;
	cluster->cl_reconnect_delay_ms = O2NET_RECONNECT_DELAY_MS_DEFAULT;
	cluster->cl_idle_timeout_ms    = O2NET_IDLE_TIMEOUT_MS_DEFAULT;
	cluster->cl_keepalive_delay_ms = O2NET_KEEPALIVE_DELAY_MS_DEFAULT;
	cluster->cl_fence_method       = O2NM_FENCE_RESET;

	ret = &cluster->cl_group;
	o2nm_single_cluster = cluster;

out:
	if (ret == NULL) {
		FUNC3(cluster);
		FUNC3(ns);
		FUNC6(o2hb_group);
		ret = FUNC0(-ENOMEM);
	}

	return ret;
}