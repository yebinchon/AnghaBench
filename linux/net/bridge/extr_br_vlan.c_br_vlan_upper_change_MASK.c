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
struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_BRIDGE_BINDING ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct net_device*) ; 
 struct net_bridge* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				 struct net_device *upper_dev,
				 bool linking)
{
	struct net_bridge *br = FUNC4(dev);

	if (!FUNC2(upper_dev))
		return;

	if (linking) {
		FUNC3(br, upper_dev);
		FUNC0(br, BROPT_VLAN_BRIDGE_BINDING, true);
	} else {
		FUNC0(br, BROPT_VLAN_BRIDGE_BINDING,
			      FUNC1(dev));
	}
}