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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int ifa_flags; int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_prefixlen; } ;
struct ifa_cacheinfo {void* ifa_prefered; void* ifa_valid; } ;
struct ifa6_config {int ifa_flags; int /*<<< orphan*/  pfx; void* preferred_lft; void* valid_lft; void* rt_priority; int /*<<< orphan*/  plen; struct in6_addr* peer_pfx; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_CACHEINFO ; 
 size_t IFA_FLAGS ; 
 int IFA_F_HOMEADDRESS ; 
 int IFA_F_MANAGETEMPADDR ; 
 int IFA_F_MCAUTOJOIN ; 
 int IFA_F_NODAD ; 
 int IFA_F_NOPREFIXROUTE ; 
 int IFA_F_OPTIMISTIC ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 size_t IFA_RT_PRIORITY ; 
 void* INFINITY_LIFE_TIME ; 
 scalar_t__ FUNC0 (struct inet6_dev*) ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct inet6_dev*) ; 
 struct net_device* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*,struct nlattr*,struct in6_addr**) ; 
 int /*<<< orphan*/  ifa_ipv6_policy ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_ifaddr*) ; 
 int FUNC6 (struct net*,int /*<<< orphan*/ ,struct ifa6_config*,struct netlink_ext_ack*) ; 
 int FUNC7 (struct inet6_ifaddr*,struct ifa6_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct inet6_dev*) ; 
 struct inet6_dev* FUNC9 (struct net_device*) ; 
 struct inet6_ifaddr* FUNC10 (struct net*,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifa6_config*,int /*<<< orphan*/ ,int) ; 
 struct ifa_cacheinfo* FUNC12 (struct nlattr*) ; 
 void* FUNC13 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC14 (struct nlmsghdr*) ; 
 int FUNC15 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct sk_buff *skb, struct nlmsghdr *nlh,
		  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC16(skb->sk);
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *peer_pfx;
	struct inet6_ifaddr *ifa;
	struct net_device *dev;
	struct inet6_dev *idev;
	struct ifa6_config cfg;
	int err;

	err = FUNC15(nlh, sizeof(*ifm), tb, IFA_MAX,
				     ifa_ipv6_policy, extack);
	if (err < 0)
		return err;

	FUNC11(&cfg, 0, sizeof(cfg));

	ifm = FUNC14(nlh);
	cfg.pfx = FUNC4(tb[IFA_ADDRESS], tb[IFA_LOCAL], &peer_pfx);
	if (!cfg.pfx)
		return -EINVAL;

	cfg.peer_pfx = peer_pfx;
	cfg.plen = ifm->ifa_prefixlen;
	if (tb[IFA_RT_PRIORITY])
		cfg.rt_priority = FUNC13(tb[IFA_RT_PRIORITY]);

	cfg.valid_lft = INFINITY_LIFE_TIME;
	cfg.preferred_lft = INFINITY_LIFE_TIME;

	if (tb[IFA_CACHEINFO]) {
		struct ifa_cacheinfo *ci;

		ci = FUNC12(tb[IFA_CACHEINFO]);
		cfg.valid_lft = ci->ifa_valid;
		cfg.preferred_lft = ci->ifa_prefered;
	}

	dev =  FUNC3(net, ifm->ifa_index);
	if (!dev)
		return -ENODEV;

	if (tb[IFA_FLAGS])
		cfg.ifa_flags = FUNC13(tb[IFA_FLAGS]);
	else
		cfg.ifa_flags = ifm->ifa_flags;

	/* We ignore other flags so far. */
	cfg.ifa_flags &= IFA_F_NODAD | IFA_F_HOMEADDRESS |
			 IFA_F_MANAGETEMPADDR | IFA_F_NOPREFIXROUTE |
			 IFA_F_MCAUTOJOIN | IFA_F_OPTIMISTIC;

	idev = FUNC9(dev);
	if (FUNC0(idev))
		return FUNC2(idev);

	if (!FUNC8(net, idev))
		cfg.ifa_flags &= ~IFA_F_OPTIMISTIC;

	if (cfg.ifa_flags & IFA_F_NODAD &&
	    cfg.ifa_flags & IFA_F_OPTIMISTIC) {
		FUNC1(extack, "IFA_F_NODAD and IFA_F_OPTIMISTIC are mutually exclusive");
		return -EINVAL;
	}

	ifa = FUNC10(net, cfg.pfx, dev, 1);
	if (!ifa) {
		/*
		 * It would be best to check for !NLM_F_CREATE here but
		 * userspace already relies on not having to provide this.
		 */
		return FUNC6(net, ifm->ifa_index, &cfg, extack);
	}

	if (nlh->nlmsg_flags & NLM_F_EXCL ||
	    !(nlh->nlmsg_flags & NLM_F_REPLACE))
		err = -EEXIST;
	else
		err = FUNC7(ifa, &cfg);

	FUNC5(ifa);

	return err;
}