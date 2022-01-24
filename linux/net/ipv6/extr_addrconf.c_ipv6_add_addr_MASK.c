#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct TYPE_8__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct inet6_ifaddr {int flags; int tokenized; struct inet6_dev* idev; int /*<<< orphan*/  tmp_list; int /*<<< orphan*/  refcnt; struct fib6_info* rt; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  cstamp; int /*<<< orphan*/  prefered_lft; int /*<<< orphan*/  valid_lft; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  scope; int /*<<< orphan*/  addr_lst; int /*<<< orphan*/  dad_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {scalar_t__ disable_policy; scalar_t__ disable_ipv6; } ;
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  tempaddr_list; TYPE_4__* dev; int /*<<< orphan*/  nd_parms; TYPE_3__ cnf; scalar_t__ dead; } ;
struct in6_validator_info {struct netlink_ext_ack* extack; struct inet6_dev* i6vi_dev; int /*<<< orphan*/  i6vi_addr; } ;
struct ifa6_config {int ifa_flags; int /*<<< orphan*/  preferred_lft; int /*<<< orphan*/  valid_lft; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  plen; int /*<<< orphan*/  scope; int /*<<< orphan*/ * peer_pfx; int /*<<< orphan*/ * pfx; } ;
struct fib6_info {int dst_nopolicy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_7__ {scalar_t__ disable_policy; } ;

/* Variables and functions */
 int EACCES ; 
 int EADDRNOTAVAIL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 struct inet6_ifaddr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFA_F_MCAUTOJOIN ; 
 int IFA_F_NODAD ; 
 int IFA_F_TEMPORARY ; 
 int IFA_F_TENTATIVE ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LOOPBACK ; 
 int IPV6_ADDR_MULTICAST ; 
 scalar_t__ FUNC3 (struct fib6_info*) ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int FUNC4 (struct fib6_info*) ; 
 int /*<<< orphan*/  addrconf_dad_work ; 
 struct fib6_info* FUNC5 (struct net*,struct inet6_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct in6_validator_info*) ; 
 int FUNC13 (TYPE_4__*,struct inet6_ifaddr*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inet6_dev*,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC16 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inet6_ifaddr *
FUNC29(struct inet6_dev *idev, struct ifa6_config *cfg,
	      bool can_block, struct netlink_ext_ack *extack)
{
	gfp_t gfp_flags = can_block ? GFP_KERNEL : GFP_ATOMIC;
	int addr_type = FUNC14(cfg->pfx);
	struct net *net = FUNC6(idev->dev);
	struct inet6_ifaddr *ifa = NULL;
	struct fib6_info *f6i = NULL;
	int err = 0;

	if (addr_type == IPV6_ADDR_ANY ||
	    (addr_type & IPV6_ADDR_MULTICAST &&
	     !(cfg->ifa_flags & IFA_F_MCAUTOJOIN)) ||
	    (!(idev->dev->flags & IFF_LOOPBACK) &&
	     !FUNC20(idev->dev) &&
	     addr_type & IPV6_ADDR_LOOPBACK))
		return FUNC0(-EADDRNOTAVAIL);

	if (idev->dead) {
		err = -ENODEV;			/*XXX*/
		goto out;
	}

	if (idev->cnf.disable_ipv6) {
		err = -EACCES;
		goto out;
	}

	/* validator notifier needs to be blocking;
	 * do not call in atomic context
	 */
	if (can_block) {
		struct in6_validator_info i6vi = {
			.i6vi_addr = *cfg->pfx,
			.i6vi_dev = idev,
			.extack = extack,
		};

		err = FUNC12(NETDEV_UP, &i6vi);
		err = FUNC21(err);
		if (err < 0)
			goto out;
	}

	ifa = FUNC17(sizeof(*ifa), gfp_flags);
	if (!ifa) {
		err = -ENOBUFS;
		goto out;
	}

	f6i = FUNC5(net, idev, cfg->pfx, false, gfp_flags);
	if (FUNC3(f6i)) {
		err = FUNC4(f6i);
		f6i = NULL;
		goto out;
	}

	if (net->ipv6.devconf_all->disable_policy ||
	    idev->cnf.disable_policy)
		f6i->dst_nopolicy = true;

	FUNC19(idev->nd_parms);

	ifa->addr = *cfg->pfx;
	if (cfg->peer_pfx)
		ifa->peer_addr = *cfg->peer_pfx;

	FUNC25(&ifa->lock);
	FUNC1(&ifa->dad_work, addrconf_dad_work);
	FUNC2(&ifa->addr_lst);
	ifa->scope = cfg->scope;
	ifa->prefix_len = cfg->plen;
	ifa->rt_priority = cfg->rt_priority;
	ifa->flags = cfg->ifa_flags;
	/* No need to add the TENTATIVE flag for addresses with NODAD */
	if (!(cfg->ifa_flags & IFA_F_NODAD))
		ifa->flags |= IFA_F_TENTATIVE;
	ifa->valid_lft = cfg->valid_lft;
	ifa->prefered_lft = cfg->preferred_lft;
	ifa->cstamp = ifa->tstamp = jiffies;
	ifa->tokenized = false;

	ifa->rt = f6i;

	ifa->idev = idev;
	FUNC8(idev);

	/* For caller */
	FUNC24(&ifa->refcnt, 1);

	FUNC22();

	err = FUNC13(idev->dev, ifa);
	if (err < 0) {
		FUNC23();
		goto out;
	}

	FUNC27(&idev->lock);

	/* Add to inet6_dev unicast addr list. */
	FUNC15(idev, ifa);

	if (ifa->flags&IFA_F_TEMPORARY) {
		FUNC18(&ifa->tmp_list, &idev->tempaddr_list);
		FUNC10(ifa);
	}

	FUNC10(ifa);
	FUNC28(&idev->lock);

	FUNC23();

	FUNC11(NETDEV_UP, ifa);
out:
	if (FUNC26(err < 0)) {
		FUNC7(f6i);

		if (ifa) {
			if (ifa->idev)
				FUNC9(ifa->idev);
			FUNC16(ifa);
		}
		ifa = FUNC0(err);
	}

	return ifa;
}