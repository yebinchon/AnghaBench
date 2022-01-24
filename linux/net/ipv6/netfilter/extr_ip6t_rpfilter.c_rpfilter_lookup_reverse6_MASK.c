#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct TYPE_3__ {scalar_t__ error; } ;
struct rt6_info {int rt6i_flags; TYPE_2__* rt6i_idev; TYPE_1__ dst; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  nexthdr; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int flowlabel; scalar_t__ flowi6_oif; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  flowi6_iif; } ;
typedef  int __be32 ;
struct TYPE_4__ {struct net_device const* dev; } ;

/* Variables and functions */
 int IPV6_FLOWINFO_MASK ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int RT6_LOOKUP_F_HAS_SADDR ; 
 int RT6_LOOKUP_F_IFACE ; 
 int RTF_ANYCAST ; 
 int RTF_LOCAL ; 
 int RTF_REJECT ; 
 int XT_RPFILTER_ACCEPT_LOCAL ; 
 int XT_RPFILTER_LOOSE ; 
 int XT_RPFILTER_VALID_MARK ; 
 scalar_t__ FUNC0 (struct net*,struct flowi6*,struct sk_buff const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt6_info*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct net_device const*) ; 
 scalar_t__ FUNC6 (struct net_device const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct net *net, const struct sk_buff *skb,
				     const struct net_device *dev, u8 flags)
{
	struct rt6_info *rt;
	struct ipv6hdr *iph = FUNC2(skb);
	bool ret = false;
	struct flowi6 fl6 = {
		.flowi6_iif = LOOPBACK_IFINDEX,
		.flowlabel = (* (__be32 *) iph) & IPV6_FLOWINFO_MASK,
		.flowi6_proto = iph->nexthdr,
		.daddr = iph->saddr,
	};
	int lookup_flags;

	if (FUNC8(&iph->daddr)) {
		FUNC4(&fl6.saddr, &iph->daddr, sizeof(struct in6_addr));
		lookup_flags = RT6_LOOKUP_F_HAS_SADDR;
	} else {
		lookup_flags = 0;
	}

	fl6.flowi6_mark = flags & XT_RPFILTER_VALID_MARK ? skb->mark : 0;

	if (FUNC7(&iph->saddr)) {
		lookup_flags |= RT6_LOOKUP_F_IFACE;
		fl6.flowi6_oif = dev->ifindex;
	/* Set flowi6_oif for vrf devices to lookup route in l3mdev domain. */
	} else if (FUNC5(dev) || FUNC6(dev) ||
		  (flags & XT_RPFILTER_LOOSE) == 0)
		fl6.flowi6_oif = dev->ifindex;

	rt = (void *)FUNC0(net, &fl6, skb, lookup_flags);
	if (rt->dst.error)
		goto out;

	if (rt->rt6i_flags & (RTF_REJECT|RTF_ANYCAST))
		goto out;

	if (rt->rt6i_flags & RTF_LOCAL) {
		ret = flags & XT_RPFILTER_ACCEPT_LOCAL;
		goto out;
	}

	if (rt->rt6i_idev->dev == dev ||
	    FUNC3(rt->rt6i_idev->dev) == dev->ifindex ||
	    (flags & XT_RPFILTER_LOOSE))
		ret = true;
 out:
	FUNC1(rt);
	return ret;
}