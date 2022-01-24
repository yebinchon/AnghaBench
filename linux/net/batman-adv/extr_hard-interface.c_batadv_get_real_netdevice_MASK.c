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
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct net* FUNC1 (struct net_device*,struct net*) ; 
 struct batadv_hard_iface* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_hard_iface*) ; 
 struct net_device* FUNC4 (struct net*,int) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *FUNC8(struct net_device *netdev)
{
	struct batadv_hard_iface *hard_iface = NULL;
	struct net_device *real_netdev = NULL;
	struct net *real_net;
	struct net *net;
	int ifindex;

	FUNC0();

	if (!netdev)
		return NULL;

	if (netdev->ifindex == FUNC5(netdev)) {
		FUNC6(netdev);
		return netdev;
	}

	hard_iface = FUNC2(netdev);
	if (!hard_iface || !hard_iface->soft_iface)
		goto out;

	net = FUNC7(hard_iface->soft_iface);
	ifindex = FUNC5(netdev);
	real_net = FUNC1(netdev, net);
	real_netdev = FUNC4(real_net, ifindex);

out:
	if (hard_iface)
		FUNC3(hard_iface);
	return real_netdev;
}