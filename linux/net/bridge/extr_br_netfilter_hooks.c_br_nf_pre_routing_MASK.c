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
struct nf_hook_state {int /*<<< orphan*/  sk; int /*<<< orphan*/  net; int /*<<< orphan*/  in; } ;
struct nf_bridge_info {int /*<<< orphan*/  ipv4_daddr; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct brnf_net {int /*<<< orphan*/  call_iptables; int /*<<< orphan*/  call_ip6tables; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int ihl; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_NF_CALL_IP6TABLES ; 
 int /*<<< orphan*/  BROPT_NF_CALL_IPTABLES ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish ; 
 unsigned int FUNC3 (void*,struct sk_buff*,struct nf_hook_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 struct net_bridge_port* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  brnf_net_id ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct brnf_net* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct nf_bridge_info* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static unsigned int FUNC23(void *priv,
				      struct sk_buff *skb,
				      const struct nf_hook_state *state)
{
	struct nf_bridge_info *nf_bridge;
	struct net_bridge_port *p;
	struct net_bridge *br;
	__u32 len = FUNC16(skb);
	struct brnf_net *brnet;

	if (FUNC22(!FUNC20(skb, len)))
		return NF_DROP;

	p = FUNC5(state->in);
	if (p == NULL)
		return NF_DROP;
	br = p->br;

	brnet = FUNC14(state->net, brnf_net_id);
	if (FUNC1(skb) || FUNC13(skb, state->net) ||
	    FUNC11(skb, state->net)) {
		if (!brnet->call_ip6tables &&
		    !FUNC4(br, BROPT_NF_CALL_IP6TABLES))
			return NF_ACCEPT;
		if (!FUNC9()) {
			FUNC19("Module ipv6 is disabled, so call_ip6tables is not supported.");
			return NF_DROP;
		}

		FUNC18(skb);
		return FUNC3(priv, skb, state);
	}

	if (!brnet->call_iptables && !FUNC4(br, BROPT_NF_CALL_IPTABLES))
		return NF_ACCEPT;

	if (!FUNC0(skb) && !FUNC12(skb, state->net) &&
	    !FUNC10(skb, state->net))
		return NF_ACCEPT;

	FUNC18(skb);

	if (FUNC6(state->net, skb))
		return NF_DROP;

	if (!FUNC15(skb))
		return NF_DROP;
	if (!FUNC21(skb, state->net))
		return NF_DROP;

	nf_bridge = FUNC17(skb);
	nf_bridge->ipv4_daddr = FUNC8(skb)->daddr;

	skb->protocol = FUNC7(ETH_P_IP);
	skb->transport_header = skb->network_header + FUNC8(skb)->ihl * 4;

	FUNC2(NFPROTO_IPV4, NF_INET_PRE_ROUTING, state->net, state->sk, skb,
		skb->dev, NULL,
		br_nf_pre_routing_finish);

	return NF_STOLEN;
}