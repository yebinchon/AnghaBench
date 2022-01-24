#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_BRIDGE_BINDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_bridge_port *p, u16 vid)
{
	struct net_device *vlan_dev;

	if (!FUNC0(p->br, BROPT_VLAN_BRIDGE_BINDING))
		return;

	vlan_dev = FUNC1(p->br->dev, vid);
	if (vlan_dev)
		FUNC2(p->br, vlan_dev);
}