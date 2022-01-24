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
struct net_device {scalar_t__ addr_len; int flags; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {scalar_t__ nh_via_table; scalar_t__ nh_via_alen; int /*<<< orphan*/  nh_flags; int /*<<< orphan*/  nh_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned int IFF_LOWER_UP ; 
 unsigned int IFF_RUNNING ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ NEIGH_LINK_TABLE ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  RTNH_F_DEAD ; 
 int /*<<< orphan*/  RTNH_F_LINKDOWN ; 
 unsigned int FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,struct mpls_route*,struct mpls_nh*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net *net, struct mpls_route *rt,
			      struct mpls_nh *nh, int oif)
{
	struct net_device *dev = NULL;
	int err = -ENODEV;

	dev = FUNC4(net, rt, nh, oif);
	if (FUNC0(dev)) {
		err = FUNC1(dev);
		dev = NULL;
		goto errout;
	}

	/* Ensure this is a supported device */
	err = -EINVAL;
	if (!FUNC5(dev))
		goto errout;

	if ((nh->nh_via_table == NEIGH_LINK_TABLE) &&
	    (dev->addr_len != nh->nh_via_alen))
		goto errout;

	FUNC2(nh->nh_dev, dev);

	if (!(dev->flags & IFF_UP)) {
		nh->nh_flags |= RTNH_F_DEAD;
	} else {
		unsigned int flags;

		flags = FUNC3(dev);
		if (!(flags & (IFF_RUNNING | IFF_LOWER_UP)))
			nh->nh_flags |= RTNH_F_LINKDOWN;
	}

	return 0;

errout:
	return err;
}