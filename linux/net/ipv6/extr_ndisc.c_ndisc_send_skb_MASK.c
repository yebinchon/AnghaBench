#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; TYPE_3__* dev; } ;
struct TYPE_5__ {struct sock* ndisc_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_cksum; int /*<<< orphan*/  icmp6_type; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_6__ {int /*<<< orphan*/  hop_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 scalar_t__ FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 struct inet6_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_addr const*,struct in6_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct icmp6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  dst_output ; 
 struct dst_entry* FUNC9 (TYPE_3__*,struct flowi6*) ; 
 struct icmp6hdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct flowi6*,int /*<<< orphan*/ ,struct in6_addr const*,struct in6_addr const*,int) ; 
 TYPE_2__* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct in6_addr const*,struct in6_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct dst_entry* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static void FUNC19(struct sk_buff *skb,
			   const struct in6_addr *daddr,
			   const struct in6_addr *saddr)
{
	struct dst_entry *dst = FUNC17(skb);
	struct net *net = FUNC8(skb->dev);
	struct sock *sk = net->ipv6.ndisc_sk;
	struct inet6_dev *idev;
	int err;
	struct icmp6hdr *icmp6h = FUNC10(skb);
	u8 type;

	type = icmp6h->icmp6_type;

	if (!dst) {
		struct flowi6 fl6;
		int oif = skb->dev->ifindex;

		FUNC11(sk, &fl6, type, saddr, daddr, oif);
		dst = FUNC9(skb->dev, &fl6);
		if (FUNC3(dst)) {
			FUNC14(skb);
			return;
		}

		FUNC18(skb, dst);
	}

	icmp6h->icmp6_cksum = FUNC6(saddr, daddr, skb->len,
					      IPPROTO_ICMPV6,
					      FUNC7(icmp6h,
							   skb->len, 0));

	FUNC13(skb, saddr, daddr, FUNC12(sk)->hop_limit, skb->len);

	FUNC15();
	idev = FUNC5(dst->dev);
	FUNC2(net, idev, IPSTATS_MIB_OUT, skb->len);

	err = FUNC4(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
		      net, sk, skb, NULL, dst->dev,
		      dst_output);
	if (!err) {
		FUNC0(net, idev, type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	}

	FUNC16();
}