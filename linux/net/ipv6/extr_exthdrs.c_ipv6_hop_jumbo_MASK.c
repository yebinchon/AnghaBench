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
typedef  scalar_t__ u32 ;
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ payload_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP6SKB_JUMBOGRAM ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INTRUNCATEDPKTS ; 
 scalar_t__ IPV6_MAXPLEN ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct net* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned char const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,scalar_t__) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC11(struct sk_buff *skb, int optoff)
{
	const unsigned char *nh = FUNC10(skb);
	struct inet6_dev *idev = FUNC2(skb->dev);
	struct net *net = FUNC5(skb);
	u32 pkt_len;

	if (nh[optoff + 1] != 4 || (optoff & 3) != 2) {
		FUNC7("ipv6_hop_jumbo: wrong jumbo opt length/alignment %d\n",
				    nh[optoff+1]);
		FUNC1(net, idev, IPSTATS_MIB_INHDRERRORS);
		goto drop;
	}

	pkt_len = FUNC8(*(__be32 *)(nh + optoff + 2));
	if (pkt_len <= IPV6_MAXPLEN) {
		FUNC1(net, idev, IPSTATS_MIB_INHDRERRORS);
		FUNC3(skb, ICMPV6_HDR_FIELD, optoff+2);
		return false;
	}
	if (FUNC4(skb)->payload_len) {
		FUNC1(net, idev, IPSTATS_MIB_INHDRERRORS);
		FUNC3(skb, ICMPV6_HDR_FIELD, optoff);
		return false;
	}

	if (pkt_len > skb->len - sizeof(struct ipv6hdr)) {
		FUNC1(net, idev, IPSTATS_MIB_INTRUNCATEDPKTS);
		goto drop;
	}

	if (FUNC9(skb, pkt_len + sizeof(struct ipv6hdr)))
		goto drop;

	FUNC0(skb)->flags |= IP6SKB_JUMBOGRAM;
	return true;

drop:
	FUNC6(skb);
	return false;
}