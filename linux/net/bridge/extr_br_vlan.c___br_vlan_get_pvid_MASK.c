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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_vlan_group*) ; 
 struct net_bridge_vlan_group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_bridge_vlan_group* FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device const*) ; 
 scalar_t__ FUNC4 (struct net_device const*) ; 

__attribute__((used)) static int FUNC5(const struct net_device *dev,
			      struct net_bridge_port *p, u16 *p_pvid)
{
	struct net_bridge_vlan_group *vg;

	if (p)
		vg = FUNC2(p);
	else if (FUNC4(dev))
		vg = FUNC1(FUNC3(dev));
	else
		return -EINVAL;

	*p_pvid = FUNC0(vg);
	return 0;
}