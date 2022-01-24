#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dev_addr_genid; } ;
struct net {TYPE_2__ ipv6; } ;
struct inet6_ifaddr {struct fib6_info* rt; TYPE_5__* idev; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  addr; } ;
struct fib6_info {int /*<<< orphan*/  fib6_node; } ;
struct TYPE_7__ {int /*<<< orphan*/  forwarding; } ;
struct TYPE_10__ {TYPE_3__* dev; TYPE_1__ cnf; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
#define  RTM_DELADDR 129 
#define  RTM_NEWADDR 128 
 struct fib6_info* FUNC1 (int /*<<< orphan*/ *,int,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net*) ; 

__attribute__((used)) static void FUNC15(int event, struct inet6_ifaddr *ifp)
{
	struct net *net = FUNC7(ifp->idev->dev);

	if (event)
		FUNC0();

	FUNC8(event ? : RTM_NEWADDR, ifp);

	switch (event) {
	case RTM_NEWADDR:
		/*
		 * If the address was optimistic we inserted the route at the
		 * start of our DAD process, so we don't need to do it again.
		 * If the device was taken down in the middle of the DAD
		 * cycle there is a race where we could get here without a
		 * host route, so nothing to insert. That will be fixed when
		 * the device is brought up.
		 */
		if (ifp->rt && !FUNC13(ifp->rt->fib6_node)) {
			FUNC10(net, ifp->rt);
		} else if (!ifp->rt && (ifp->idev->dev->flags & IFF_UP)) {
			FUNC12("BUG: Address %pI6c on device %s is missing its host route.\n",
				&ifp->addr, ifp->idev->dev->name);
		}

		if (ifp->idev->cnf.forwarding)
			FUNC2(ifp);
		if (!FUNC11(&ifp->peer_addr))
			FUNC5(&ifp->peer_addr, 128, 0,
					      ifp->idev->dev, 0, 0,
					      GFP_ATOMIC);
		break;
	case RTM_DELADDR:
		if (ifp->idev->cnf.forwarding)
			FUNC3(ifp);
		FUNC4(ifp->idev, &ifp->addr);
		if (!FUNC11(&ifp->peer_addr)) {
			struct fib6_info *rt;

			rt = FUNC1(&ifp->peer_addr, 128,
						       ifp->idev->dev, 0, 0,
						       false);
			if (rt)
				FUNC9(net, rt);
		}
		if (ifp->rt) {
			FUNC9(net, ifp->rt);
			ifp->rt = NULL;
		}
		FUNC14(net);
		break;
	}
	FUNC6(&net->ipv6.dev_addr_genid);
}