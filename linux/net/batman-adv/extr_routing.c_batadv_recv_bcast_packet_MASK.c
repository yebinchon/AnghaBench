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
typedef  void* u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {void* last_bcast_seqno; int /*<<< orphan*/  bcast_seqno_lock; int /*<<< orphan*/  bcast_bits; int /*<<< orphan*/  bcast_seqno_reset; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;
struct batadv_bcast_packet {int ttl; int /*<<< orphan*/  seqno; int /*<<< orphan*/  orig; } ;
typedef  void* s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_BCAST_MAX_AGE ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC2 (struct batadv_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct batadv_orig_node*,int) ; 
 scalar_t__ FUNC4 (struct batadv_priv*,struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,int,struct batadv_orig_node*) ; 
 scalar_t__ FUNC8 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_orig_node* FUNC9 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC13 (struct batadv_priv*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ethhdr* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct batadv_priv* FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 

int FUNC24(struct sk_buff *skb,
			     struct batadv_hard_iface *recv_if)
{
	struct batadv_priv *bat_priv = FUNC18(recv_if->soft_iface);
	struct batadv_orig_node *orig_node = NULL;
	struct batadv_bcast_packet *bcast_packet;
	struct ethhdr *ethhdr;
	int hdr_size = sizeof(*bcast_packet);
	int ret = NET_RX_DROP;
	s32 seq_diff;
	u32 seqno;

	/* drop packet if it has not necessary minimum size */
	if (FUNC23(!FUNC20(skb, hdr_size)))
		goto free_skb;

	ethhdr = FUNC14(skb);

	/* packet with broadcast indication but unicast recipient */
	if (!FUNC15(ethhdr->h_dest))
		goto free_skb;

	/* packet with broadcast/multicast sender address */
	if (FUNC16(ethhdr->h_source))
		goto free_skb;

	/* ignore broadcasts sent by myself */
	if (FUNC8(bat_priv, ethhdr->h_source))
		goto free_skb;

	bcast_packet = (struct batadv_bcast_packet *)skb->data;

	/* ignore broadcasts originated by myself */
	if (FUNC8(bat_priv, bcast_packet->orig))
		goto free_skb;

	if (bcast_packet->ttl < 2)
		goto free_skb;

	orig_node = FUNC9(bat_priv, bcast_packet->orig);

	if (!orig_node)
		goto free_skb;

	FUNC21(&orig_node->bcast_seqno_lock);

	seqno = FUNC19(bcast_packet->seqno);
	/* check whether the packet is a duplicate */
	if (FUNC12(orig_node->bcast_bits, orig_node->last_bcast_seqno,
			    seqno))
		goto spin_unlock;

	seq_diff = seqno - orig_node->last_bcast_seqno;

	/* check whether the packet is old and the host just restarted. */
	if (FUNC13(bat_priv, seq_diff,
				    BATADV_BCAST_MAX_AGE,
				    &orig_node->bcast_seqno_reset, NULL))
		goto spin_unlock;

	/* mark broadcast in flood history, update window position
	 * if required.
	 */
	if (FUNC1(bat_priv, orig_node->bcast_bits, seq_diff, 1))
		orig_node->last_bcast_seqno = seqno;

	FUNC22(&orig_node->bcast_seqno_lock);

	/* check whether this has been sent by another originator before */
	if (FUNC2(bat_priv, skb))
		goto free_skb;

	FUNC11(skb, sizeof(struct batadv_bcast_packet));

	/* rebroadcast packet */
	FUNC0(bat_priv, skb, 1, false);

	/* don't hand the broadcast up if it is from an originator
	 * from the same backbone.
	 */
	if (FUNC3(skb, orig_node, hdr_size))
		goto free_skb;

	if (FUNC5(bat_priv, skb, hdr_size))
		goto rx_success;
	if (FUNC4(bat_priv, skb, hdr_size))
		goto rx_success;

	FUNC6(bat_priv, skb, hdr_size);

	/* broadcast for me */
	FUNC7(recv_if->soft_iface, skb, hdr_size, orig_node);

rx_success:
	ret = NET_RX_SUCCESS;
	goto out;

spin_unlock:
	FUNC22(&orig_node->bcast_seqno_lock);
free_skb:
	FUNC17(skb);
out:
	if (orig_node)
		FUNC10(orig_node);
	return ret;
}