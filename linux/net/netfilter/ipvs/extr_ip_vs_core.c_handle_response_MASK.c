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
struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {scalar_t__ snat_handler; } ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  off; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_conn {int flags; int /*<<< orphan*/  ipvs; TYPE_1__ vaddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int IP_VS_CONN_F_NFCT ; 
 int /*<<< orphan*/  FUNC0 (int,int,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_VS_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,struct ip_vs_iphdr*) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_vs_conn*,int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_proto_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC14(int af, struct sk_buff *skb, struct ip_vs_proto_data *pd,
		struct ip_vs_conn *cp, struct ip_vs_iphdr *iph,
		unsigned int hooknum)
{
	struct ip_vs_protocol *pp = pd->pp;

	FUNC0(11, af, pp, skb, iph->off, "Outgoing packet");

	if (FUNC13(skb, iph->len))
		goto drop;

	/* mangle the packet */
	if (pp->snat_handler &&
	    !FUNC2(pp->snat_handler, skb, pp, cp, iph))
		goto drop;

#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		ipv6_hdr(skb)->saddr = cp->vaddr.in6;
	else
#endif
	{
		FUNC3(skb)->saddr = cp->vaddr.ip;
		FUNC4(FUNC3(skb));
	}

	/*
	 * nf_iterate does not expect change in the skb->dst->dev.
	 * It looks like it is not fatal to enable this code for hooks
	 * where our handlers are at the end of the chain list and
	 * when all next handlers use skb->dst->dev and not outdev.
	 * It will definitely route properly the inout NAT traffic
	 * when multiple paths are used.
	 */

	/* For policy routing, packets originating from this
	 * machine itself may be routed differently to packets
	 * passing through.  We want this packet to be routed as
	 * if it came from this machine itself.  So re-compute
	 * the routing information.
	 */
	if (FUNC8(cp->ipvs, af, skb, hooknum))
		goto drop;

	FUNC0(10, af, pp, skb, iph->off, "After SNAT");

	FUNC7(cp, skb);
	FUNC9(cp, IP_VS_DIR_OUTPUT, skb, pd);
	skb->ipvs_property = 1;
	if (!(cp->flags & IP_VS_CONN_F_NFCT))
		FUNC6(skb);
	else
		FUNC10(skb, cp, 0);
	FUNC5(cp);

	FUNC1(11);
	return NF_ACCEPT;

drop:
	FUNC5(cp);
	FUNC12(skb);
	FUNC1(11);
	return NF_STOLEN;
}