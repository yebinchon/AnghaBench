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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  protocol; void* saddr; void* daddr; scalar_t__ frag_off; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
typedef  void* __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct net *net, struct sk_buff *skb,
		     __be32 saddr, __be32 daddr)
{
	struct iphdr *iph;
	const struct iphdr *old_iph = FUNC2(skb);

	FUNC7(skb, sizeof(struct iphdr));
	skb->transport_header = skb->network_header;
	FUNC8(skb);
	iph = FUNC2(skb);

	iph->version	=	4;
	iph->tos	=	old_iph->tos;
	iph->ttl	=	old_iph->ttl;
	iph->frag_off	=	0;
	iph->daddr	=	daddr;
	iph->saddr	=	saddr;
	iph->protocol	=	IPPROTO_IPIP;
	iph->ihl	=	5;
	iph->tot_len	=	FUNC1(skb->len);
	FUNC3(net, skb, NULL);
	FUNC4(iph);

	FUNC5(&(FUNC0(skb)->opt), 0, sizeof(FUNC0(skb)->opt));
	FUNC6(skb);
}