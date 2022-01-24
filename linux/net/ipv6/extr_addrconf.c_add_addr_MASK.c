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
struct inet6_ifaddr {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct inet6_dev {int /*<<< orphan*/  dev; } ;
struct in6_addr {int dummy; } ;
struct ifa6_config {int plen; int scope; int /*<<< orphan*/  preferred_lft; int /*<<< orphan*/  valid_lft; int /*<<< orphan*/  ifa_flags; struct in6_addr const* pfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC3 (struct inet6_dev*,struct ifa6_config*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inet6_dev *idev, const struct in6_addr *addr,
		     int plen, int scope)
{
	struct inet6_ifaddr *ifp;
	struct ifa6_config cfg = {
		.pfx = addr,
		.plen = plen,
		.ifa_flags = IFA_F_PERMANENT,
		.valid_lft = INFINITY_LIFE_TIME,
		.preferred_lft = INFINITY_LIFE_TIME,
		.scope = scope
	};

	ifp = FUNC3(idev, &cfg, true, NULL);
	if (!FUNC0(ifp)) {
		FUNC6(&ifp->lock);
		ifp->flags &= ~IFA_F_TENTATIVE;
		FUNC7(&ifp->lock);
		FUNC5(FUNC1(idev->dev));
		FUNC4(RTM_NEWADDR, ifp);
		FUNC2(ifp);
	}
}