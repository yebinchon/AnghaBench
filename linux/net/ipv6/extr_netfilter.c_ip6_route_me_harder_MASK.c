#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  mark; int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_oif; } ;
struct dst_entry {int error; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {unsigned int hard_header_len; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int IP6SKB_XFRM_TRANSFORMED ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MULTICAST ; 
 scalar_t__ FUNC3 (struct dst_entry*) ; 
 int FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi6*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 
 struct dst_entry* FUNC8 (struct net*,struct sock*,struct flowi6*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct dst_entry*) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct net*,struct sock*) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC20 (struct net*,struct dst_entry*,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 

int FUNC21(struct net *net, struct sk_buff *skb)
{
	const struct ipv6hdr *iph = FUNC10(skb);
	struct sock *sk = FUNC13(skb->sk);
	unsigned int hh_len;
	struct dst_entry *dst;
	int strict = (FUNC9(&iph->daddr) &
		      (IPV6_ADDR_MULTICAST | IPV6_ADDR_LINKLOCAL));
	struct flowi6 fl6 = {
		.flowi6_oif = sk && sk->sk_bound_dev_if ? sk->sk_bound_dev_if :
			strict ? FUNC14(skb)->dev->ifindex : 0,
		.flowi6_mark = skb->mark,
		.flowi6_uid = FUNC18(net, sk),
		.daddr = iph->daddr,
		.saddr = iph->saddr,
	};
	int err;

	dst = FUNC8(net, sk, &fl6);
	err = dst->error;
	if (err) {
		FUNC2(net, FUNC7(dst), IPSTATS_MIB_OUTNOROUTES);
		FUNC11("ip6_route_me_harder: No more route\n");
		FUNC5(dst);
		return err;
	}

	/* Drop old route. */
	FUNC15(skb);

	FUNC16(skb, dst);

#ifdef CONFIG_XFRM
	if (!(IP6CB(skb)->flags & IP6SKB_XFRM_TRANSFORMED) &&
	    xfrm_decode_session(skb, flowi6_to_flowi(&fl6), AF_INET6) == 0) {
		skb_dst_set(skb, NULL);
		dst = xfrm_lookup(net, dst, flowi6_to_flowi(&fl6), sk, 0);
		if (IS_ERR(dst))
			return PTR_ERR(dst);
		skb_dst_set(skb, dst);
	}
#endif

	/* Change in oif may mean change in hh_len. */
	hh_len = FUNC14(skb)->dev->hard_header_len;
	if (FUNC17(skb) < hh_len &&
	    FUNC12(skb, FUNC0(hh_len - FUNC17(skb)),
			     0, GFP_ATOMIC))
		return -ENOMEM;

	return 0;
}