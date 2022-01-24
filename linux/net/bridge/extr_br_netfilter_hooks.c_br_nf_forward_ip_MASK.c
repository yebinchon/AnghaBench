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
typedef  scalar_t__ u_int8_t ;
struct sk_buff {scalar_t__ pkt_type; void* protocol; int /*<<< orphan*/  dev; } ;
struct nf_hook_state {int /*<<< orphan*/  net; int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
struct nf_bridge_info {int pkt_otherhost; int /*<<< orphan*/  physoutdev; int /*<<< orphan*/  frag_max_size; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  frag_max_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  frag_max_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ NFPROTO_IPV4 ; 
 scalar_t__ NFPROTO_IPV6 ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 unsigned int NF_STOLEN ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  br_nf_forward_finish ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nf_bridge_info* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC17(void *priv,
				     struct sk_buff *skb,
				     const struct nf_hook_state *state)
{
	struct nf_bridge_info *nf_bridge;
	struct net_device *parent;
	u_int8_t pf;

	nf_bridge = FUNC14(skb);
	if (!nf_bridge)
		return NF_ACCEPT;

	/* Need exclusive nf_bridge_info since we might have multiple
	 * different physoutdevs. */
	if (!FUNC16(skb))
		return NF_DROP;

	nf_bridge = FUNC14(skb);
	if (!nf_bridge)
		return NF_DROP;

	parent = FUNC7(state->out);
	if (!parent)
		return NF_DROP;

	if (FUNC2(skb) || FUNC12(skb, state->net) ||
	    FUNC10(skb, state->net))
		pf = NFPROTO_IPV4;
	else if (FUNC3(skb) || FUNC13(skb, state->net) ||
		 FUNC11(skb, state->net))
		pf = NFPROTO_IPV6;
	else
		return NF_ACCEPT;

	FUNC15(skb);

	if (skb->pkt_type == PACKET_OTHERHOST) {
		skb->pkt_type = PACKET_HOST;
		nf_bridge->pkt_otherhost = true;
	}

	if (pf == NFPROTO_IPV4) {
		if (FUNC5(state->net, skb))
			return NF_DROP;
		FUNC1(skb)->frag_max_size = nf_bridge->frag_max_size;
	}

	if (pf == NFPROTO_IPV6) {
		if (FUNC6(state->net, skb))
			return NF_DROP;
		FUNC0(skb)->frag_max_size = nf_bridge->frag_max_size;
	}

	nf_bridge->physoutdev = skb->dev;
	if (pf == NFPROTO_IPV4)
		skb->protocol = FUNC9(ETH_P_IP);
	else
		skb->protocol = FUNC9(ETH_P_IPV6);

	FUNC4(pf, NF_INET_FORWARD, state->net, NULL, skb,
		FUNC8(skb, state->in, state->net),
		parent,	br_nf_forward_finish);

	return NF_STOLEN;
}