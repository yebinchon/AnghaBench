#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  pkt_type; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct nf_ipv6_ops {int /*<<< orphan*/  (* route_input ) (struct sk_buff*) ;} ;
struct nf_bridge_info {int pkt_otherhost; struct net_device* physindev; scalar_t__ in_prerouting; int /*<<< orphan*/  frag_max_size; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  frag_max_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_dest; } ;
struct TYPE_4__ {struct net_device* dev; scalar_t__ error; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NF_BR_PRE_ROUTING ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  br_handle_frame_finish ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct nf_bridge_info*) ; 
 int /*<<< orphan*/  br_nf_pre_routing_finish_bridge ; 
 struct rtable* FUNC3 (struct net_device*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct nf_bridge_info* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct nf_ipv6_ops* FUNC10 () ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct nf_bridge_info *nf_bridge = FUNC7(skb);
	struct rtable *rt;
	struct net_device *dev = skb->dev;
	const struct nf_ipv6_ops *v6ops = FUNC10();

	nf_bridge->frag_max_size = FUNC0(skb)->frag_max_size;

	if (nf_bridge->pkt_otherhost) {
		skb->pkt_type = PACKET_OTHERHOST;
		nf_bridge->pkt_otherhost = false;
	}
	nf_bridge->in_prerouting = 0;
	if (FUNC2(skb, nf_bridge)) {
		FUNC12(skb);
		v6ops->route_input(skb);

		if (FUNC11(skb)->error) {
			FUNC6(skb);
			return 0;
		}

		if (FUNC11(skb)->dev == dev) {
			skb->dev = nf_bridge->physindev;
			FUNC9(skb);
			FUNC8(skb);
			FUNC1(NF_BR_PRE_ROUTING,
					  net, sk, skb, skb->dev, NULL,
					  br_nf_pre_routing_finish_bridge);
			return 0;
		}
		FUNC5(FUNC4(skb)->h_dest, dev->dev_addr);
		skb->pkt_type = PACKET_HOST;
	} else {
		rt = FUNC3(nf_bridge->physindev);
		if (!rt) {
			FUNC6(skb);
			return 0;
		}
		FUNC13(skb, &rt->dst);
	}

	skb->dev = nf_bridge->physindev;
	FUNC9(skb);
	FUNC8(skb);
	FUNC1(NF_BR_PRE_ROUTING, net, sk, skb,
			  skb->dev, NULL, br_handle_frame_finish);

	return 0;
}