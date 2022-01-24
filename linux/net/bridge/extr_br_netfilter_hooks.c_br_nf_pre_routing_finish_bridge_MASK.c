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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nf_bridge_info {int bridged_dnat; int /*<<< orphan*/  neigh_header; int /*<<< orphan*/  physindev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ hh_len; } ;
struct neighbour {int nud_state; int (* output ) (struct neighbour*,struct sk_buff*) ;TYPE_1__ hh; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int NUD_CONNECTED ; 
 int FUNC0 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC2 (struct dst_entry*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 struct nf_bridge_info* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dst_entry* FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct neighbour*,struct sk_buff*) ; 

int FUNC10(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct neighbour *neigh;
	struct dst_entry *dst;

	skb->dev = FUNC1(skb->dev);
	if (!skb->dev)
		goto free_skb;
	dst = FUNC8(skb);
	neigh = FUNC2(dst, skb);
	if (neigh) {
		struct nf_bridge_info *nf_bridge = FUNC6(skb);
		int ret;

		if ((neigh->nud_state & NUD_CONNECTED) && neigh->hh.hh_len) {
			FUNC4(&neigh->hh, skb);
			skb->dev = nf_bridge->physindev;
			ret = FUNC0(net, sk, skb);
		} else {
			/* the neighbour function below overwrites the complete
			 * MAC header, so we save the Ethernet source address and
			 * protocol number.
			 */
			FUNC7(skb,
							 -(ETH_HLEN-ETH_ALEN),
							 nf_bridge->neigh_header,
							 ETH_HLEN-ETH_ALEN);
			/* tell br_dev_xmit to continue with forwarding */
			nf_bridge->bridged_dnat = 1;
			/* FIXME Need to refragment */
			ret = neigh->output(neigh, skb);
		}
		FUNC5(neigh);
		return ret;
	}
free_skb:
	FUNC3(skb);
	return 0;
}