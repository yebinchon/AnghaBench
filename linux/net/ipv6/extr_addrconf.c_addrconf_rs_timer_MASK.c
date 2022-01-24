#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ rtr_solicits; int /*<<< orphan*/  rtr_solicit_delay; int /*<<< orphan*/  rtr_solicit_max_interval; } ;
struct inet6_dev {int if_flags; scalar_t__ rs_probes; int /*<<< orphan*/  lock; struct net_device* dev; int /*<<< orphan*/  rs_interval; TYPE_1__ cnf; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int IF_RA_RCVD ; 
 int IF_READY ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* idev ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  in6addr_linklocal_allrouters ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_timer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct inet6_dev *idev = FUNC1(idev, t, rs_timer);
	struct net_device *dev = idev->dev;
	struct in6_addr lladdr;

	FUNC8(&idev->lock);
	if (idev->dead || !(idev->if_flags & IF_READY))
		goto out;

	if (!FUNC3(idev))
		goto out;

	/* Announcement received after solicitation was sent */
	if (idev->if_flags & IF_RA_RCVD)
		goto out;

	if (idev->rs_probes++ < idev->cnf.rtr_solicits || idev->cnf.rtr_solicits < 0) {
		FUNC9(&idev->lock);
		if (!FUNC4(dev, &lladdr, IFA_F_TENTATIVE))
			FUNC5(dev, &lladdr,
				      &in6addr_linklocal_allrouters);
		else
			goto put;

		FUNC8(&idev->lock);
		idev->rs_interval = FUNC7(
			idev->rs_interval, idev->cnf.rtr_solicit_max_interval);
		/* The wait after the last probe can be shorter */
		FUNC0(idev, (idev->rs_probes ==
					     idev->cnf.rtr_solicits) ?
				      idev->cnf.rtr_solicit_delay :
				      idev->rs_interval);
	} else {
		/*
		 * Note: we do not support deprecated "all on-link"
		 * assumption any longer.
		 */
		FUNC6("%s: no IPv6 routers present\n", idev->dev->name);
	}

out:
	FUNC9(&idev->lock);
put:
	FUNC2(idev);
}