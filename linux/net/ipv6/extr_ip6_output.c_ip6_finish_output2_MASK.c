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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  dev; } ;
struct rt6_info {int dummy; } ;
struct net_device {int flags; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {struct net_device* dev; int /*<<< orphan*/  lwtstate; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ hop_limit; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_LOOPBACK ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IP6SKB_FORWARDED ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTMCAST ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPV6_ADDR_SCOPE_NODELOCAL ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*) ; 
 int LWTUNNEL_XMIT_DONE ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 struct neighbour* FUNC6 (struct net_device*,struct in6_addr const*) ; 
 struct neighbour* FUNC7 (int /*<<< orphan*/ *,struct in6_addr const*,struct net_device*,int) ; 
 int /*<<< orphan*/  dev_loopback_xmit ; 
 struct inet6_dev* FUNC8 (struct dst_entry*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct net*,struct sk_buff*) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int FUNC16 (struct neighbour*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct in6_addr* FUNC19 (struct rt6_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct sock*) ; 
 struct sk_buff* FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,struct neighbour*) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC22(skb);
	struct net_device *dev = dst->dev;
	const struct in6_addr *nexthop;
	struct neighbour *neigh;
	int ret;

	if (FUNC9(&FUNC11(skb)->daddr)) {
		struct inet6_dev *idev = FUNC8(FUNC22(skb));

		if (!(dev->flags & IFF_LOOPBACK) && FUNC20(sk) &&
		    ((FUNC15(net, skb) &&
		     !(FUNC0(skb)->flags & IP6SKB_FORWARDED)) ||
		     FUNC10(dev, &FUNC11(skb)->daddr,
					 &FUNC11(skb)->saddr))) {
			struct sk_buff *newskb = FUNC21(skb, GFP_ATOMIC);

			/* Do not check for IFF_ALLMULTI; multicast routing
			   is not supported in any case.
			 */
			if (newskb)
				FUNC5(NFPROTO_IPV6, NF_INET_POST_ROUTING,
					net, sk, newskb, NULL, newskb->dev,
					dev_loopback_xmit);

			if (FUNC11(skb)->hop_limit == 0) {
				FUNC1(net, idev,
					      IPSTATS_MIB_OUTDISCARDS);
				FUNC12(skb);
				return 0;
			}
		}

		FUNC2(net, idev, IPSTATS_MIB_OUTMCAST, skb->len);

		if (FUNC3(&FUNC11(skb)->daddr) <=
		    IPV6_ADDR_SCOPE_NODELOCAL &&
		    !(dev->flags & IFF_LOOPBACK)) {
			FUNC12(skb);
			return 0;
		}
	}

	if (FUNC14(dst->lwtstate)) {
		int res = FUNC13(skb);

		if (res < 0 || res == LWTUNNEL_XMIT_DONE)
			return res;
	}

	FUNC17();
	nexthop = FUNC19((struct rt6_info *)dst, &FUNC11(skb)->daddr);
	neigh = FUNC6(dst->dev, nexthop);
	if (FUNC24(!neigh))
		neigh = FUNC7(&nd_tbl, nexthop, dst->dev, false);
	if (!FUNC4(neigh)) {
		FUNC23(skb, neigh);
		ret = FUNC16(neigh, skb, false);
		FUNC18();
		return ret;
	}
	FUNC18();

	FUNC1(net, FUNC8(dst), IPSTATS_MIB_OUTNOROUTES);
	FUNC12(skb);
	return -EINVAL;
}