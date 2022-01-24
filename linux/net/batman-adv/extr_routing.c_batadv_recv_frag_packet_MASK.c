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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ priority; scalar_t__ data; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  batman_adv_ptype; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  soft_iface; } ;
struct batadv_frag_packet {int /*<<< orphan*/  dest; scalar_t__ priority; int /*<<< orphan*/  orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_FRAG_RX ; 
 int /*<<< orphan*/  BATADV_CNT_FRAG_RX_BYTES ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff**,struct batadv_orig_node*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct batadv_hard_iface*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_orig_node* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct batadv_priv* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct sk_buff *skb,
			    struct batadv_hard_iface *recv_if)
{
	struct batadv_priv *bat_priv = FUNC10(recv_if->soft_iface);
	struct batadv_orig_node *orig_node_src = NULL;
	struct batadv_frag_packet *frag_packet;
	int ret = NET_RX_DROP;

	if (FUNC2(bat_priv, skb,
					sizeof(*frag_packet)) < 0)
		goto free_skb;

	frag_packet = (struct batadv_frag_packet *)skb->data;
	orig_node_src = FUNC7(bat_priv, frag_packet->orig);
	if (!orig_node_src)
		goto free_skb;

	skb->priority = frag_packet->priority + 256;

	/* Route the fragment if it is not for us and too big to be merged. */
	if (!FUNC6(bat_priv, frag_packet->dest) &&
	    FUNC4(skb, recv_if, orig_node_src)) {
		/* skb was consumed */
		skb = NULL;
		ret = NET_RX_SUCCESS;
		goto put_orig_node;
	}

	FUNC5(bat_priv, BATADV_CNT_FRAG_RX);
	FUNC0(bat_priv, BATADV_CNT_FRAG_RX_BYTES, skb->len);

	/* Add fragment to buffer and merge if possible. */
	if (!FUNC3(&skb, orig_node_src))
		goto put_orig_node;

	/* Deliver merged packet to the appropriate handler, if it was
	 * merged
	 */
	if (skb) {
		FUNC1(skb, recv_if->net_dev,
				       &recv_if->batman_adv_ptype, NULL);
		/* skb was consumed */
		skb = NULL;
	}

	ret = NET_RX_SUCCESS;

put_orig_node:
	FUNC8(orig_node_src);
free_skb:
	FUNC9(skb);

	return ret;
}