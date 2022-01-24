#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
struct sk_buff {scalar_t__ pkt_type; void* protocol; int /*<<< orphan*/  dev; } ;
struct nf_hook_state {int /*<<< orphan*/  sk; int /*<<< orphan*/  net; } ;
struct nf_bridge_info {int pkt_otherhost; int /*<<< orphan*/  physoutdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ NFPROTO_IPV4 ; 
 scalar_t__ NFPROTO_IPV6 ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 unsigned int NF_STOLEN ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  br_nf_dev_queue_xmit ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nf_bridge_info* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC11(void *priv,
				       struct sk_buff *skb,
				       const struct nf_hook_state *state)
{
	struct nf_bridge_info *nf_bridge = FUNC9(skb);
	struct net_device *realoutdev = FUNC3(skb->dev);
	u_int8_t pf;

	/* if nf_bridge is set, but ->physoutdev is NULL, this packet came in
	 * on a bridge, but was delivered locally and is now being routed:
	 *
	 * POST_ROUTING was already invoked from the ip stack.
	 */
	if (!nf_bridge || !nf_bridge->physoutdev)
		return NF_ACCEPT;

	if (!realoutdev)
		return NF_DROP;

	if (FUNC0(skb) || FUNC7(skb, state->net) ||
	    FUNC5(skb, state->net))
		pf = NFPROTO_IPV4;
	else if (FUNC1(skb) || FUNC8(skb, state->net) ||
		 FUNC6(skb, state->net))
		pf = NFPROTO_IPV6;
	else
		return NF_ACCEPT;

	/* We assume any code from br_dev_queue_push_xmit onwards doesn't care
	 * about the value of skb->pkt_type. */
	if (skb->pkt_type == PACKET_OTHERHOST) {
		skb->pkt_type = PACKET_HOST;
		nf_bridge->pkt_otherhost = true;
	}

	FUNC10(skb);
	if (pf == NFPROTO_IPV4)
		skb->protocol = FUNC4(ETH_P_IP);
	else
		skb->protocol = FUNC4(ETH_P_IPV6);

	FUNC2(pf, NF_INET_POST_ROUTING, state->net, state->sk, skb,
		NULL, realoutdev,
		br_nf_dev_queue_xmit);

	return NF_STOLEN;
}