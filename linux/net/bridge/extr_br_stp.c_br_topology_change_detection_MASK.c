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
struct net_bridge {scalar_t__ stp_enabled; int topology_change_detected; scalar_t__ bridge_hello_time; int /*<<< orphan*/  tcn_timer; scalar_t__ bridge_max_age; scalar_t__ bridge_forward_delay; int /*<<< orphan*/  topology_change_timer; } ;

/* Variables and functions */
 scalar_t__ BR_KERNEL_STP ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*,char*) ; 
 int FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC5(struct net_bridge *br)
{
	int isroot = FUNC2(br);

	if (br->stp_enabled != BR_KERNEL_STP)
		return;

	FUNC1(br, "topology change detected, %s\n",
		isroot ? "propagating" : "sending tcn bpdu");

	if (isroot) {
		FUNC0(br, 1);
		FUNC4(&br->topology_change_timer, jiffies
			  + br->bridge_forward_delay + br->bridge_max_age);
	} else if (!br->topology_change_detected) {
		FUNC3(br);
		FUNC4(&br->tcn_timer, jiffies + br->bridge_hello_time);
	}

	br->topology_change_detected = 1;
}