#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  pkt_type; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct nf_bridge_info {int pkt_otherhost; struct net_device* physindev; scalar_t__ in_prerouting; int /*<<< orphan*/  frag_max_size; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct in_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  frag_max_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  h_dest; } ;
struct TYPE_7__ {struct net_device* dev; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtable*) ; 
 int /*<<< orphan*/  NF_BR_PRE_ROUTING ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  br_handle_frame_finish ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct nf_bridge_info*) ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish_bridge ; 
 struct rtable* FUNC7 (struct net_device*) ; 
 TYPE_4__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct rtable* FUNC12 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct nf_bridge_info* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 TYPE_3__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct iphdr *iph = FUNC10(skb);
	struct nf_bridge_info *nf_bridge = FUNC15(skb);
	struct rtable *rt;
	int err;

	nf_bridge->frag_max_size = FUNC1(skb)->frag_max_size;

	if (nf_bridge->pkt_otherhost) {
		skb->pkt_type = PACKET_OTHERHOST;
		nf_bridge->pkt_otherhost = false;
	}
	nf_bridge->in_prerouting = 0;
	if (FUNC6(skb, nf_bridge)) {
		if ((err = FUNC11(skb, iph->daddr, iph->saddr, iph->tos, dev))) {
			struct in_device *in_dev = FUNC4(dev);

			/* If err equals -EHOSTUNREACH the error is due to a
			 * martian destination or due to the fact that
			 * forwarding is disabled. For most martian packets,
			 * ip_route_output_key() will fail. It won't fail for 2 types of
			 * martian destinations: loopback destinations and destination
			 * 0.0.0.0. In both cases the packet will be dropped because the
			 * destination is the loopback device and not the bridge. */
			if (err != -EHOSTUNREACH || !in_dev || FUNC0(in_dev))
				goto free_skb;

			rt = FUNC12(net, iph->daddr, 0,
					     FUNC3(iph->tos), 0);
			if (!FUNC2(rt)) {
				/* - Bridged-and-DNAT'ed traffic doesn't
				 *   require ip_forwarding. */
				if (rt->dst.dev == dev) {
					FUNC19(skb, &rt->dst);
					goto bridged_dnat;
				}
				FUNC13(rt);
			}
free_skb:
			FUNC14(skb);
			return 0;
		} else {
			if (FUNC18(skb)->dev == dev) {
bridged_dnat:
				skb->dev = nf_bridge->physindev;
				FUNC17(skb);
				FUNC16(skb);
				FUNC5(NF_BR_PRE_ROUTING,
						  net, sk, skb, skb->dev,
						  NULL,
						  br_nf_pre_routing_finish_bridge);
				return 0;
			}
			FUNC9(FUNC8(skb)->h_dest, dev->dev_addr);
			skb->pkt_type = PACKET_HOST;
		}
	} else {
		rt = FUNC7(nf_bridge->physindev);
		if (!rt) {
			FUNC14(skb);
			return 0;
		}
		FUNC20(skb, &rt->dst);
	}

	skb->dev = nf_bridge->physindev;
	FUNC17(skb);
	FUNC16(skb);
	FUNC5(NF_BR_PRE_ROUTING, net, sk, skb, skb->dev, NULL,
			  br_handle_frame_finish);
	return 0;
}