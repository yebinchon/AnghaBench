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
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ network_header; scalar_t__ transport_header; int /*<<< orphan*/  protocol; } ;
struct nf_hook_state {int /*<<< orphan*/  sk; int /*<<< orphan*/  net; } ;
struct nf_bridge_info {int /*<<< orphan*/  ipv6_daddr; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish_ipv6 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct nf_bridge_info* FUNC4 (struct sk_buff*) ; 
 struct nf_bridge_info* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

unsigned int FUNC7(void *priv,
				    struct sk_buff *skb,
				    const struct nf_hook_state *state)
{
	struct nf_bridge_info *nf_bridge;

	if (FUNC1(state->net, skb))
		return NF_DROP;

	nf_bridge = FUNC4(skb);
	if (!nf_bridge)
		return NF_DROP;
	if (!FUNC6(skb, state->net))
		return NF_DROP;

	nf_bridge = FUNC5(skb);
	nf_bridge->ipv6_daddr = FUNC3(skb)->daddr;

	skb->protocol = FUNC2(ETH_P_IPV6);
	skb->transport_header = skb->network_header + sizeof(struct ipv6hdr);

	FUNC0(NFPROTO_IPV6, NF_INET_PRE_ROUTING, state->net, state->sk, skb,
		skb->dev, NULL,
		br_nf_pre_routing_finish_ipv6);

	return NF_STOLEN;
}