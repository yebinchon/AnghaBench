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
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 struct net_bridge_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct net_bridge *br, struct net_device *dev)
{
	struct net_bridge_port *p;
	bool changed_addr;

	p = FUNC1(dev);
	if (!p || p->br != br)
		return -EINVAL;

	/* Since more than one interface can be attached to a bridge,
	 * there still maybe an alternate path for netconsole to use;
	 * therefore there is no reason for a NETDEV_RELEASE event.
	 */
	FUNC5(p);

	FUNC0(br);
	FUNC2(br);

	FUNC7(&br->lock);
	changed_addr = FUNC3(br);
	FUNC8(&br->lock);

	if (changed_addr)
		FUNC4(NETDEV_CHANGEADDR, br->dev);

	FUNC6(br->dev);

	return 0;
}