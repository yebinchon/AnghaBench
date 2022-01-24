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
struct TYPE_2__ {int /*<<< orphan*/  num_entries; } ;
struct batadv_orig_node_vlan {int /*<<< orphan*/  list; TYPE_1__ tt; } ;
struct batadv_orig_node {int /*<<< orphan*/  vlan_list_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct batadv_orig_node_vlan* FUNC1 (struct batadv_orig_node*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node_vlan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct batadv_orig_node *orig_node,
				      unsigned short vid, int v)
{
	struct batadv_orig_node_vlan *vlan;

	vlan = FUNC1(orig_node, vid);
	if (!vlan)
		return;

	if (FUNC0(v, &vlan->tt.num_entries) == 0) {
		FUNC5(&orig_node->vlan_list_lock);
		if (!FUNC4(&vlan->list)) {
			FUNC3(&vlan->list);
			FUNC2(vlan);
		}
		FUNC6(&orig_node->vlan_list_lock);
	}

	FUNC2(vlan);
}