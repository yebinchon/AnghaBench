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
typedef  scalar_t__ u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_autojoin_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_ifaddr {int flags; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct inet6_dev {int flags; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct ifa6_config {int plen; unsigned long valid_lft; unsigned long preferred_lft; int ifa_flags; int /*<<< orphan*/  pfx; int /*<<< orphan*/  scope; } ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HZ ; 
 int IFA_F_DEPRECATED ; 
 int IFA_F_MANAGETEMPADDR ; 
 int IFA_F_MCAUTOJOIN ; 
 int IFA_F_NODAD ; 
 int IFA_F_NOPREFIXROUTE ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_PERMANENT ; 
 scalar_t__ FUNC1 (struct inet6_ifaddr*) ; 
 int FUNC2 (struct inet6_ifaddr*) ; 
 scalar_t__ RTF_EXPIRES ; 
 struct net_device* FUNC3 (struct net*,int) ; 
 struct inet6_ifaddr* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC11 (struct inet6_ifaddr*,struct ifa6_config*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct inet6_ifaddr*,struct inet6_ifaddr*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net *net, int ifindex,
			  struct ifa6_config *cfg,
			  struct netlink_ext_ack *extack)
{
	struct inet6_ifaddr *ifp;
	struct inet6_dev *idev;
	struct net_device *dev;
	unsigned long timeout;
	clock_t expires;
	u32 flags;

	FUNC0();

	if (cfg->plen > 128)
		return -EINVAL;

	/* check the lifetime */
	if (!cfg->valid_lft || cfg->preferred_lft > cfg->valid_lft)
		return -EINVAL;

	if (cfg->ifa_flags & IFA_F_MANAGETEMPADDR && cfg->plen != 64)
		return -EINVAL;

	dev = FUNC3(net, ifindex);
	if (!dev)
		return -ENODEV;

	idev = FUNC4(dev);
	if (FUNC1(idev))
		return FUNC2(idev);

	if (cfg->ifa_flags & IFA_F_MCAUTOJOIN) {
		int ret = FUNC14(net->ipv6.mc_autojoin_sk,
					 true, cfg->pfx, ifindex);

		if (ret < 0)
			return ret;
	}

	cfg->scope = FUNC12(cfg->pfx);

	timeout = FUNC8(cfg->valid_lft, HZ);
	if (FUNC6(timeout)) {
		expires = FUNC15(timeout * HZ);
		cfg->valid_lft = timeout;
		flags = RTF_EXPIRES;
	} else {
		expires = 0;
		flags = 0;
		cfg->ifa_flags |= IFA_F_PERMANENT;
	}

	timeout = FUNC8(cfg->preferred_lft, HZ);
	if (FUNC6(timeout)) {
		if (timeout == 0)
			cfg->ifa_flags |= IFA_F_DEPRECATED;
		cfg->preferred_lft = timeout;
	}

	ifp = FUNC11(idev, cfg, true, extack);
	if (!FUNC1(ifp)) {
		if (!(cfg->ifa_flags & IFA_F_NOPREFIXROUTE)) {
			FUNC7(&ifp->addr, ifp->prefix_len,
					      ifp->rt_priority, dev, expires,
					      flags, GFP_KERNEL);
		}

		/* Send a netlink notification if DAD is enabled and
		 * optimistic flag is not set
		 */
		if (!(ifp->flags & (IFA_F_OPTIMISTIC | IFA_F_NODAD)))
			FUNC13(0, ifp);
		/*
		 * Note that section 3.1 of RFC 4429 indicates
		 * that the Optimistic flag should not be set for
		 * manually configured addresses
		 */
		FUNC5(ifp);
		if (cfg->ifa_flags & IFA_F_MANAGETEMPADDR)
			FUNC16(idev, ifp, cfg->valid_lft,
					 cfg->preferred_lft, true, jiffies);
		FUNC10(ifp);
		FUNC9();
		return 0;
	} else if (cfg->ifa_flags & IFA_F_MCAUTOJOIN) {
		FUNC14(net->ipv6.mc_autojoin_sk, false,
			       cfg->pfx, ifindex);
	}

	return FUNC2(ifp);
}