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
struct net {int dummy; } ;
struct inet6_ifaddr {int flags; scalar_t__ state; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; int /*<<< orphan*/  lock; struct fib6_info* rt; } ;
struct inet6_dev {int /*<<< orphan*/  dev; } ;
struct fib6_info {int /*<<< orphan*/  fib6_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFA_F_NOPREFIXROUTE ; 
 scalar_t__ INET6_IFADDR_STATE_PREDAD ; 
 scalar_t__ FUNC0 (struct fib6_info*) ; 
 int FUNC1 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 struct fib6_info* FUNC3 (struct net*,struct inet6_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *net,
				struct inet6_dev *idev,
				struct inet6_ifaddr *ifp)
{
	/* !fib6_node means the host route was removed from the
	 * FIB, for example, if 'lo' device is taken down. In that
	 * case regenerate the host route.
	 */
	if (!ifp->rt || !ifp->rt->fib6_node) {
		struct fib6_info *f6i, *prev;

		f6i = FUNC3(net, idev, &ifp->addr, false,
					 GFP_ATOMIC);
		if (FUNC0(f6i))
			return FUNC1(f6i);

		/* ifp->rt can be accessed outside of rtnl */
		FUNC6(&ifp->lock);
		prev = ifp->rt;
		ifp->rt = f6i;
		FUNC7(&ifp->lock);

		FUNC5(prev);
	}

	if (!(ifp->flags & IFA_F_NOPREFIXROUTE)) {
		FUNC4(&ifp->addr, ifp->prefix_len,
				      ifp->rt_priority, idev->dev, 0, 0,
				      GFP_ATOMIC);
	}

	if (ifp->state == INET6_IFADDR_STATE_PREDAD)
		FUNC2(ifp);

	return 0;
}