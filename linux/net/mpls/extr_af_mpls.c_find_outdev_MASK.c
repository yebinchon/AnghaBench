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
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {int nh_via_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
#define  NEIGH_ARP_TABLE 130 
#define  NEIGH_LINK_TABLE 129 
#define  NEIGH_ND_TABLE 128 
 struct net_device* FUNC2 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mpls_route*,struct mpls_nh*) ; 

__attribute__((used)) static struct net_device *FUNC7(struct net *net,
				      struct mpls_route *rt,
				      struct mpls_nh *nh, int oif)
{
	struct net_device *dev = NULL;

	if (!oif) {
		switch (nh->nh_via_table) {
		case NEIGH_ARP_TABLE:
			dev = FUNC5(net, FUNC6(rt, nh));
			break;
		case NEIGH_ND_TABLE:
			dev = FUNC4(net, FUNC6(rt, nh));
			break;
		case NEIGH_LINK_TABLE:
			break;
		}
	} else {
		dev = FUNC2(net, oif);
	}

	if (!dev)
		return FUNC0(-ENODEV);

	if (FUNC1(dev))
		return dev;

	/* The caller is holding rtnl anyways, so release the dev reference */
	FUNC3(dev);

	return dev;
}