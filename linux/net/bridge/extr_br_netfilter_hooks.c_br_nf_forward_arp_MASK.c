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
struct sk_buff {scalar_t__ cb; } ;
struct nf_hook_state {int /*<<< orphan*/  out; struct net_device* in; int /*<<< orphan*/  sk; int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct brnf_net {int /*<<< orphan*/  call_arptables; } ;
struct TYPE_2__ {int ar_pln; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_NF_CALL_ARPTABLES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFPROTO_ARP ; 
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  NF_ARP_FORWARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int NF_STOLEN ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  br_nf_forward_finish ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 struct net_bridge_port* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brnf_net_id ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct brnf_net* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC9(void *priv,
				      struct sk_buff *skb,
				      const struct nf_hook_state *state)
{
	struct net_bridge_port *p;
	struct net_bridge *br;
	struct net_device **d = (struct net_device **)(skb->cb);
	struct brnf_net *brnet;

	p = FUNC4(state->out);
	if (p == NULL)
		return NF_ACCEPT;
	br = p->br;

	brnet = FUNC6(state->net, brnf_net_id);
	if (!brnet->call_arptables && !FUNC3(br, BROPT_NF_CALL_ARPTABLES))
		return NF_ACCEPT;

	if (!FUNC0(skb)) {
		if (!FUNC5(skb, state->net))
			return NF_ACCEPT;
		FUNC7(skb);
	}

	if (FUNC2(skb)->ar_pln != 4) {
		if (FUNC5(skb, state->net))
			FUNC8(skb);
		return NF_ACCEPT;
	}
	*d = state->in;
	FUNC1(NFPROTO_ARP, NF_ARP_FORWARD, state->net, state->sk, skb,
		state->in, state->out, br_nf_forward_finish);

	return NF_STOLEN;
}