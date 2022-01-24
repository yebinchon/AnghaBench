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
struct batadv_orig_node_vlan {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  batadv_orig_node_vlan_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct batadv_orig_node_vlan *orig_vlan)
{
	FUNC0(&orig_vlan->refcount, batadv_orig_node_vlan_release);
}