#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct inet6_ifaddr {int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {scalar_t__ optimistic_dad; } ;
struct inet6_dev {int /*<<< orphan*/  dev; TYPE_1__ cnf; } ;
struct in6_addr {int dummy; } ;
struct ifa6_config {int plen; int ifa_flags; int /*<<< orphan*/  scope; int /*<<< orphan*/  preferred_lft; int /*<<< orphan*/  valid_lft; struct in6_addr const* pfx; } ;
struct TYPE_7__ {TYPE_2__* devconf_all; } ;
struct TYPE_8__ {TYPE_3__ ipv6; } ;
struct TYPE_6__ {int /*<<< orphan*/  forwarding; scalar_t__ optimistic_dad; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_LINK ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC5 (struct inet6_dev*,struct ifa6_config*,int,int /*<<< orphan*/ *) ; 

void FUNC6(struct inet6_dev *idev,
			    const struct in6_addr *addr, u32 flags)
{
	struct ifa6_config cfg = {
		.pfx = addr,
		.plen = 64,
		.ifa_flags = flags | IFA_F_PERMANENT,
		.valid_lft = INFINITY_LIFE_TIME,
		.preferred_lft = INFINITY_LIFE_TIME,
		.scope = IFA_LINK
	};
	struct inet6_ifaddr *ifp;

#ifdef CONFIG_IPV6_OPTIMISTIC_DAD
	if ((dev_net(idev->dev)->ipv6.devconf_all->optimistic_dad ||
	     idev->cnf.optimistic_dad) &&
	    !dev_net(idev->dev)->ipv6.devconf_all->forwarding)
		cfg.ifa_flags |= IFA_F_OPTIMISTIC;
#endif

	ifp = FUNC5(idev, &cfg, true, NULL);
	if (!FUNC0(ifp)) {
		FUNC2(&ifp->addr, ifp->prefix_len, 0, idev->dev,
				      0, 0, GFP_ATOMIC);
		FUNC1(ifp);
		FUNC4(ifp);
	}
}