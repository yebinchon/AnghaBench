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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; scalar_t__ cb; int /*<<< orphan*/  pkt_type; } ;
struct nf_bridge_info {int pkt_otherhost; struct net_device* physindev; int /*<<< orphan*/  frag_max_size; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  frag_max_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  frag_max_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  NF_BR_FORWARD ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  br_forward_finish ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net*) ; 
 struct nf_bridge_info* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct nf_bridge_info *nf_bridge = FUNC6(skb);
	struct net_device *in;

	if (!FUNC2(skb) && !FUNC5(skb, net)) {

		if (skb->protocol == FUNC4(ETH_P_IP))
			nf_bridge->frag_max_size = FUNC1(skb)->frag_max_size;

		if (skb->protocol == FUNC4(ETH_P_IPV6))
			nf_bridge->frag_max_size = FUNC0(skb)->frag_max_size;

		in = nf_bridge->physindev;
		if (nf_bridge->pkt_otherhost) {
			skb->pkt_type = PACKET_OTHERHOST;
			nf_bridge->pkt_otherhost = false;
		}
		FUNC8(skb);
	} else {
		in = *((struct net_device **)(skb->cb));
	}
	FUNC7(skb);

	FUNC3(NF_BR_FORWARD, net, sk, skb, in, skb->dev,
			  br_forward_finish);
	return 0;
}