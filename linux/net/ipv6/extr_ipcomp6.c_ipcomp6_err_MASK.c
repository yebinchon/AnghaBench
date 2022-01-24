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
typedef  scalar_t__ u8 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {TYPE_1__* dev; int /*<<< orphan*/  mark; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ip_comp_hdr {int /*<<< orphan*/  cpi; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  IPPROTO_COMP ; 
 scalar_t__ NDISC_REDIRECT ; 
 struct net* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct inet6_skb_parm *opt,
				u8 type, u8 code, int offset, __be32 info)
{
	struct net *net = FUNC0(skb->dev);
	__be32 spi;
	const struct ipv6hdr *iph = (const struct ipv6hdr *)skb->data;
	struct ip_comp_hdr *ipcomph =
		(struct ip_comp_hdr *)(skb->data + offset);
	struct xfrm_state *x;

	if (type != ICMPV6_PKT_TOOBIG &&
	    type != NDISC_REDIRECT)
		return 0;

	spi = FUNC1(FUNC4(ipcomph->cpi));
	x = FUNC6(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
			      spi, IPPROTO_COMP, AF_INET6);
	if (!x)
		return 0;

	if (type == NDISC_REDIRECT)
		FUNC2(skb, net, skb->dev->ifindex, 0,
			     FUNC5(net, NULL));
	else
		FUNC3(skb, net, info, 0, 0, FUNC5(net, NULL));
	FUNC7(x);

	return 0;
}