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
struct xfrm_offload {int flags; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct iphdr {int protocol; int /*<<< orphan*/  tot_len; } ;
struct TYPE_2__ {int protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 int XFRM_GRO ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  xfrm4_rcv_encap_finish ; 
 struct xfrm_offload* FUNC10 (struct sk_buff*) ; 

int FUNC11(struct sk_buff *skb, int async)
{
	struct xfrm_offload *xo = FUNC10(skb);
	struct iphdr *iph = FUNC5(skb);

	iph->protocol = FUNC1(skb)->protocol;

#ifndef CONFIG_NETFILTER
	if (!async)
		return -iph->protocol;
#endif

	FUNC2(skb, skb->data - FUNC8(skb));
	iph->tot_len = FUNC4(skb->len);
	FUNC6(iph);

	if (xo && (xo->flags & XFRM_GRO)) {
		FUNC7(skb);
		FUNC9(skb);
		return 0;
	}

	FUNC0(NFPROTO_IPV4, NF_INET_PRE_ROUTING,
		FUNC3(skb->dev), NULL, skb, skb->dev, NULL,
		xfrm4_rcv_encap_finish);
	return 0;
}