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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {TYPE_2__* if_incoming; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;
struct batadv_frag_packet {int /*<<< orphan*/  ttl; int /*<<< orphan*/  total_size; int /*<<< orphan*/  dest; } ;
struct TYPE_4__ {TYPE_1__* net_dev; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_FRAG_FWD ; 
 int /*<<< orphan*/  BATADV_CNT_FRAG_FWD_BYTES ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct batadv_neigh_node* FUNC1 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_node*) ; 
 struct batadv_orig_node* FUNC4 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct batadv_neigh_node*) ; 
 struct batadv_priv* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(struct sk_buff *skb,
			 struct batadv_hard_iface *recv_if,
			 struct batadv_orig_node *orig_node_src)
{
	struct batadv_priv *bat_priv = FUNC7(recv_if->soft_iface);
	struct batadv_orig_node *orig_node_dst;
	struct batadv_neigh_node *neigh_node = NULL;
	struct batadv_frag_packet *packet;
	u16 total_size;
	bool ret = false;

	packet = (struct batadv_frag_packet *)skb->data;
	orig_node_dst = FUNC4(bat_priv, packet->dest);
	if (!orig_node_dst)
		goto out;

	neigh_node = FUNC1(bat_priv, orig_node_dst, recv_if);
	if (!neigh_node)
		goto out;

	/* Forward the fragment, if the merged packet would be too big to
	 * be assembled.
	 */
	total_size = FUNC8(packet->total_size);
	if (total_size > neigh_node->if_incoming->net_dev->mtu) {
		FUNC2(bat_priv, BATADV_CNT_FRAG_FWD);
		FUNC0(bat_priv, BATADV_CNT_FRAG_FWD_BYTES,
				   skb->len + ETH_HLEN);

		packet->ttl--;
		FUNC6(skb, neigh_node);
		ret = true;
	}

out:
	if (orig_node_dst)
		FUNC5(orig_node_dst);
	if (neigh_node)
		FUNC3(neigh_node);
	return ret;
}