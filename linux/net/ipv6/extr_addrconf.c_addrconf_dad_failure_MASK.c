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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int idgen_retries; int /*<<< orphan*/  idgen_delay; } ;
struct TYPE_8__ {TYPE_2__ sysctl; } ;
struct net {TYPE_3__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct inet6_ifaddr {int flags; int stable_privacy_retry; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; struct inet6_dev* idev; struct in6_addr addr; int /*<<< orphan*/  scope; int /*<<< orphan*/  prefered_lft; int /*<<< orphan*/  valid_lft; int /*<<< orphan*/  prefix_len; } ;
struct TYPE_6__ {scalar_t__ max_addresses; } ;
struct inet6_dev {TYPE_5__* dev; TYPE_1__ cnf; } ;
struct ifa6_config {int ifa_flags; int /*<<< orphan*/  scope; int /*<<< orphan*/  preferred_lft; int /*<<< orphan*/  valid_lft; int /*<<< orphan*/  plen; struct in6_addr* pfx; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int IFA_F_STABLE_PRIVACY ; 
 int /*<<< orphan*/  INET6_IFADDR_STATE_ERRDAD ; 
 int /*<<< orphan*/  INET6_IFADDR_STATE_PREDAD ; 
 scalar_t__ FUNC0 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (TYPE_5__*) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC6 (struct inet6_dev*,struct ifa6_config*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct inet6_dev*) ; 
 scalar_t__ FUNC8 (struct in6_addr*,int,struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct sk_buff *skb, struct inet6_ifaddr *ifp)
{
	struct inet6_dev *idev = ifp->idev;
	struct net *net = FUNC3(ifp->idev->dev);

	if (FUNC1(ifp)) {
		FUNC5(ifp);
		return;
	}

	FUNC9("%s: IPv6 duplicate address %pI6c used by %pM detected!\n",
			     ifp->idev->dev->name, &ifp->addr, FUNC4(skb)->h_source);

	FUNC10(&ifp->lock);

	if (ifp->flags & IFA_F_STABLE_PRIVACY) {
		struct in6_addr new_addr;
		struct inet6_ifaddr *ifp2;
		int retries = ifp->stable_privacy_retry + 1;
		struct ifa6_config cfg = {
			.pfx = &new_addr,
			.plen = ifp->prefix_len,
			.ifa_flags = ifp->flags,
			.valid_lft = ifp->valid_lft,
			.preferred_lft = ifp->prefered_lft,
			.scope = ifp->scope,
		};

		if (retries > net->ipv6.sysctl.idgen_retries) {
			FUNC9("%s: privacy stable address generation failed because of DAD conflicts!\n",
					     ifp->idev->dev->name);
			goto errdad;
		}

		new_addr = ifp->addr;
		if (FUNC8(&new_addr, retries,
						 idev))
			goto errdad;

		FUNC11(&ifp->lock);

		if (idev->cnf.max_addresses &&
		    FUNC7(idev) >=
		    idev->cnf.max_addresses)
			goto lock_errdad;

		FUNC9("%s: generating new stable privacy address because of DAD conflict\n",
				     ifp->idev->dev->name);

		ifp2 = FUNC6(idev, &cfg, false, NULL);
		if (FUNC0(ifp2))
			goto lock_errdad;

		FUNC10(&ifp2->lock);
		ifp2->stable_privacy_retry = retries;
		ifp2->state = INET6_IFADDR_STATE_PREDAD;
		FUNC11(&ifp2->lock);

		FUNC2(ifp2, net->ipv6.sysctl.idgen_delay);
		FUNC5(ifp2);
lock_errdad:
		FUNC10(&ifp->lock);
	}

errdad:
	/* transition from _POSTDAD to _ERRDAD */
	ifp->state = INET6_IFADDR_STATE_ERRDAD;
	FUNC11(&ifp->lock);

	FUNC2(ifp, 0);
	FUNC5(ifp);
}