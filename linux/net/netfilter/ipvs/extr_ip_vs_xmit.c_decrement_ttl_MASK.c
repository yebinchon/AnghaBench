#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct netns_ipvs {struct net* net; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int ttl; } ;
struct TYPE_4__ {int hop_limit; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 int /*<<< orphan*/  ICMP_EXC_TTL ; 
 int /*<<< orphan*/  ICMP_TIME_EXCEEDED ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 struct dst_entry* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static inline bool FUNC10(struct netns_ipvs *ipvs,
				 int skb_af,
				 struct sk_buff *skb)
{
	struct net *net = ipvs->net;

#ifdef CONFIG_IP_VS_IPV6
	if (skb_af == AF_INET6) {
		struct dst_entry *dst = skb_dst(skb);

		/* check and decrement ttl */
		if (ipv6_hdr(skb)->hop_limit <= 1) {
			struct inet6_dev *idev = __in6_dev_get_safely(skb->dev);

			/* Force OUTPUT device used as source address */
			skb->dev = dst->dev;
			icmpv6_send(skb, ICMPV6_TIME_EXCEED,
				    ICMPV6_EXC_HOPLIMIT, 0);
			__IP6_INC_STATS(net, idev, IPSTATS_MIB_INHDRERRORS);

			return false;
		}

		/* don't propagate ttl change to cloned packets */
		if (skb_ensure_writable(skb, sizeof(struct ipv6hdr)))
			return false;

		ipv6_hdr(skb)->hop_limit--;
	} else
#endif
	{
		if (FUNC6(skb)->ttl <= 1) {
			/* Tell the sender its packet died... */
			FUNC1(net, IPSTATS_MIB_INHDRERRORS);
			FUNC3(skb, ICMP_TIME_EXCEEDED, ICMP_EXC_TTL, 0);
			return false;
		}

		/* don't propagate ttl change to cloned packets */
		if (FUNC9(skb, sizeof(struct iphdr)))
			return false;

		/* Decrease ttl */
		FUNC5(FUNC6(skb));
	}

	return true;
}