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
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int /*<<< orphan*/  vlgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_vlan_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_vlan_group* FUNC4 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct net_bridge_port *port)
{
	struct net_bridge_vlan_group *vg;

	FUNC0();

	vg = FUNC4(port);
	FUNC2(vg);
	FUNC1(port->vlgrp, NULL);
	FUNC5();
	FUNC3(vg);
}