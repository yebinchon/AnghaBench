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
struct ip_esp_hdr {int /*<<< orphan*/  spi; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  IPPROTO_ESP ; 
 scalar_t__ NDISC_REDIRECT ; 
 struct net* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct inet6_skb_parm *opt,
		    u8 type, u8 code, int offset, __be32 info)
{
	struct net *net = FUNC0(skb->dev);
	const struct ipv6hdr *iph = (const struct ipv6hdr *)skb->data;
	struct ip_esp_hdr *esph = (struct ip_esp_hdr *)(skb->data + offset);
	struct xfrm_state *x;

	if (type != ICMPV6_PKT_TOOBIG &&
	    type != NDISC_REDIRECT)
		return 0;

	x = FUNC4(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
			      esph->spi, IPPROTO_ESP, AF_INET6);
	if (!x)
		return 0;

	if (type == NDISC_REDIRECT)
		FUNC1(skb, net, skb->dev->ifindex, 0,
			     FUNC3(net, NULL));
	else
		FUNC2(skb, net, info, 0, 0, FUNC3(net, NULL));
	FUNC5(x);

	return 0;
}