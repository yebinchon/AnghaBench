#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; } ;
struct inet6_ifaddr {scalar_t__ scope; int flags; TYPE_5__* idev; int /*<<< orphan*/  lock; int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {scalar_t__ rtr_solicits; int /*<<< orphan*/  rtr_solicit_interval; int /*<<< orphan*/  forwarding; scalar_t__ ndisc_notify; } ;
struct TYPE_13__ {int rs_probes; int /*<<< orphan*/  lock; int /*<<< orphan*/  rs_interval; int /*<<< orphan*/  if_flags; TYPE_3__ cnf; struct net_device* dev; } ;
struct TYPE_10__ {TYPE_1__* devconf_all; } ;
struct TYPE_12__ {TYPE_2__ ipv6; } ;
struct TYPE_9__ {scalar_t__ ndisc_notify; } ;

/* Variables and functions */
 int IFA_F_TEMPORARY ; 
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 scalar_t__ IFA_LINK ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IF_RS_SENT ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  in6addr_linklocal_allnodes ; 
 int /*<<< orphan*/  in6addr_linklocal_allrouters ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 scalar_t__ FUNC7 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct inet6_ifaddr *ifp, bool bump_id,
				   bool send_na)
{
	struct net_device *dev = ifp->idev->dev;
	struct in6_addr lladdr;
	bool send_rs, send_mld;

	FUNC0(ifp);

	/*
	 *	Configure the address for reception. Now it is valid.
	 */

	FUNC6(RTM_NEWADDR, ifp);

	/* If added prefix is link local and we are prepared to process
	   router advertisements, start sending router solicitations.
	 */

	FUNC11(&ifp->idev->lock);
	send_mld = ifp->scope == IFA_LINK && FUNC7(ifp);
	send_rs = send_mld &&
		  FUNC4(ifp->idev) &&
		  ifp->idev->cnf.rtr_solicits != 0 &&
		  (dev->flags&IFF_LOOPBACK) == 0;
	FUNC12(&ifp->idev->lock);

	/* While dad is in progress mld report's source address is in6_addrany.
	 * Resend with proper ll now.
	 */
	if (send_mld)
		FUNC8(ifp->idev);

	/* send unsolicited NA if enabled */
	if (send_na &&
	    (ifp->idev->cnf.ndisc_notify ||
	     FUNC3(dev)->ipv6.devconf_all->ndisc_notify)) {
		FUNC9(dev, &in6addr_linklocal_allnodes, &ifp->addr,
			      /*router=*/ !!ifp->idev->cnf.forwarding,
			      /*solicited=*/ false, /*override=*/ true,
			      /*inc_opt=*/ true);
	}

	if (send_rs) {
		/*
		 *	If a host as already performed a random delay
		 *	[...] as part of DAD [...] there is no need
		 *	to delay again before sending the first RS
		 */
		if (FUNC5(dev, &lladdr, IFA_F_TENTATIVE))
			return;
		FUNC10(dev, &lladdr, &in6addr_linklocal_allrouters);

		FUNC17(&ifp->idev->lock);
		FUNC15(&ifp->lock);
		ifp->idev->rs_interval = FUNC13(
			ifp->idev->cnf.rtr_solicit_interval);
		ifp->idev->rs_probes = 1;
		ifp->idev->if_flags |= IF_RS_SENT;
		FUNC1(ifp->idev, ifp->idev->rs_interval);
		FUNC16(&ifp->lock);
		FUNC18(&ifp->idev->lock);
	}

	if (bump_id)
		FUNC14(FUNC3(dev));

	/* Make sure that a new temporary address will be created
	 * before this temporary address becomes deprecated.
	 */
	if (ifp->flags & IFA_F_TEMPORARY)
		FUNC2();
}