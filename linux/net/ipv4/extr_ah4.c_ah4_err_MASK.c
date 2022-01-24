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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; scalar_t__ data; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  daddr; } ;
struct ip_auth_hdr {int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
#define  ICMP_DEST_UNREACH 129 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
#define  ICMP_REDIRECT 128 
 int /*<<< orphan*/  IPPROTO_AH ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfrm_state* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, u32 info)
{
	struct net *net = FUNC0(skb->dev);
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	struct ip_auth_hdr *ah = (struct ip_auth_hdr *)(skb->data+(iph->ihl<<2));
	struct xfrm_state *x;

	switch (FUNC1(skb)->type) {
	case ICMP_DEST_UNREACH:
		if (FUNC1(skb)->code != ICMP_FRAG_NEEDED)
			return 0;
	case ICMP_REDIRECT:
		break;
	default:
		return 0;
	}

	x = FUNC4(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
			      ah->spi, IPPROTO_AH, AF_INET);
	if (!x)
		return 0;

	if (FUNC1(skb)->type == ICMP_DEST_UNREACH)
		FUNC3(skb, net, info, 0, IPPROTO_AH);
	else
		FUNC2(skb, net, 0, IPPROTO_AH);
	FUNC5(x);

	return 0;
}