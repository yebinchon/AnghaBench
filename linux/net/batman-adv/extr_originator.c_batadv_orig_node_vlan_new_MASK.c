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
struct batadv_orig_node_vlan {unsigned short vid; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;
struct batadv_orig_node {int /*<<< orphan*/  vlan_list_lock; int /*<<< orphan*/  vlan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct batadv_orig_node_vlan* FUNC0 (struct batadv_orig_node*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct batadv_orig_node_vlan* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct batadv_orig_node_vlan *
FUNC7(struct batadv_orig_node *orig_node,
			  unsigned short vid)
{
	struct batadv_orig_node_vlan *vlan;

	FUNC5(&orig_node->vlan_list_lock);

	/* first look if an object for this vid already exists */
	vlan = FUNC0(orig_node, vid);
	if (vlan)
		goto out;

	vlan = FUNC4(sizeof(*vlan), GFP_ATOMIC);
	if (!vlan)
		goto out;

	FUNC3(&vlan->refcount);
	vlan->vid = vid;

	FUNC2(&vlan->refcount);
	FUNC1(&vlan->list, &orig_node->vlan_list);

out:
	FUNC6(&orig_node->vlan_list_lock);

	return vlan;
}