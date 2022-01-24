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
struct ip_comp_hdr {int /*<<< orphan*/  cpi; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int type; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
#define  ICMP_DEST_UNREACH 129 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
#define  ICMP_REDIRECT 128 
 int /*<<< orphan*/  IPPROTO_COMP ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct xfrm_state* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, u32 info)
{
	struct net *net = FUNC0(skb->dev);
	__be32 spi;
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	struct ip_comp_hdr *ipch = (struct ip_comp_hdr *)(skb->data+(iph->ihl<<2));
	struct xfrm_state *x;

	switch (FUNC2(skb)->type) {
	case ICMP_DEST_UNREACH:
		if (FUNC2(skb)->code != ICMP_FRAG_NEEDED)
			return 0;
	case ICMP_REDIRECT:
		break;
	default:
		return 0;
	}

	spi = FUNC1(FUNC5(ipch->cpi));
	x = FUNC6(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
			      spi, IPPROTO_COMP, AF_INET);
	if (!x)
		return 0;

	if (FUNC2(skb)->type == ICMP_DEST_UNREACH)
		FUNC4(skb, net, info, 0, IPPROTO_COMP);
	else
		FUNC3(skb, net, 0, IPPROTO_COMP);
	FUNC7(x);

	return 0;
}