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
struct sk_buff {scalar_t__ pkt_type; scalar_t__ protocol; struct net_device* dev; } ;
struct nf_bridge_info {int pkt_otherhost; int in_prerouting; int /*<<< orphan*/  orig_proto; struct net_device* physindev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRNF_PROTO_8021Q ; 
 int /*<<< orphan*/  BRNF_PROTO_PPPOE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 struct net_device* FUNC0 (struct sk_buff*,struct net_device*,struct net const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_bridge_info* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

struct net_device *FUNC4(struct sk_buff *skb, const struct net *net)
{
	struct nf_bridge_info *nf_bridge = FUNC2(skb);

	if (skb->pkt_type == PACKET_OTHERHOST) {
		skb->pkt_type = PACKET_HOST;
		nf_bridge->pkt_otherhost = true;
	}

	nf_bridge->in_prerouting = 1;
	nf_bridge->physindev = skb->dev;
	skb->dev = FUNC0(skb, skb->dev, net);

	if (skb->protocol == FUNC1(ETH_P_8021Q))
		nf_bridge->orig_proto = BRNF_PROTO_8021Q;
	else if (skb->protocol == FUNC1(ETH_P_PPP_SES))
		nf_bridge->orig_proto = BRNF_PROTO_PPPOE;

	/* Must drop socket now because of tproxy. */
	FUNC3(skb);
	return skb->dev;
}