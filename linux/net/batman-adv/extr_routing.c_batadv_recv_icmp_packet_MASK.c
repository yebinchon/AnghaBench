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
struct sk_buff {int len; scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_icmp_packet_rr {size_t rr_cur; int /*<<< orphan*/ * rr; } ;
struct batadv_icmp_header {scalar_t__ msg_type; int ttl; int /*<<< orphan*/  dst; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 scalar_t__ BATADV_ECHO_REPLY ; 
 scalar_t__ BATADV_ECHO_REQUEST ; 
 size_t BATADV_RR_LEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int NET_XMIT_SUCCESS ; 
 scalar_t__ FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct batadv_orig_node* FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node*) ; 
 int FUNC3 (struct batadv_priv*,struct sk_buff*) ; 
 int FUNC4 (struct batadv_priv*,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 struct ethhdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct batadv_priv* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct sk_buff *skb,
			    struct batadv_hard_iface *recv_if)
{
	struct batadv_priv *bat_priv = FUNC11(recv_if->soft_iface);
	struct batadv_icmp_header *icmph;
	struct batadv_icmp_packet_rr *icmp_packet_rr;
	struct ethhdr *ethhdr;
	struct batadv_orig_node *orig_node = NULL;
	int hdr_size = sizeof(struct batadv_icmp_header);
	int res, ret = NET_RX_DROP;

	/* drop packet if it has not necessary minimum size */
	if (FUNC15(!FUNC12(skb, hdr_size)))
		goto free_skb;

	ethhdr = FUNC6(skb);

	/* packet with unicast indication but non-unicast recipient */
	if (!FUNC9(ethhdr->h_dest))
		goto free_skb;

	/* packet with broadcast/multicast sender address */
	if (FUNC8(ethhdr->h_source))
		goto free_skb;

	/* not for me */
	if (!FUNC0(bat_priv, ethhdr->h_dest))
		goto free_skb;

	icmph = (struct batadv_icmp_header *)skb->data;

	/* add record route information if not full */
	if ((icmph->msg_type == BATADV_ECHO_REPLY ||
	     icmph->msg_type == BATADV_ECHO_REQUEST) &&
	    skb->len >= sizeof(struct batadv_icmp_packet_rr)) {
		if (FUNC14(skb) < 0)
			goto free_skb;

		/* create a copy of the skb, if needed, to modify it. */
		if (FUNC13(skb, ETH_HLEN) < 0)
			goto free_skb;

		ethhdr = FUNC6(skb);
		icmph = (struct batadv_icmp_header *)skb->data;
		icmp_packet_rr = (struct batadv_icmp_packet_rr *)icmph;
		if (icmp_packet_rr->rr_cur >= BATADV_RR_LEN)
			goto free_skb;

		FUNC7(icmp_packet_rr->rr[icmp_packet_rr->rr_cur],
				ethhdr->h_dest);
		icmp_packet_rr->rr_cur++;
	}

	/* packet for me */
	if (FUNC0(bat_priv, icmph->dst))
		return FUNC4(bat_priv, skb);

	/* TTL exceeded */
	if (icmph->ttl < 2)
		return FUNC3(bat_priv, skb);

	/* get routing information */
	orig_node = FUNC1(bat_priv, icmph->dst);
	if (!orig_node)
		goto free_skb;

	/* create a copy of the skb, if needed, to modify it. */
	if (FUNC13(skb, ETH_HLEN) < 0)
		goto put_orig_node;

	icmph = (struct batadv_icmp_header *)skb->data;

	/* decrement ttl */
	icmph->ttl--;

	/* route it */
	res = FUNC5(skb, orig_node, recv_if);
	if (res == NET_XMIT_SUCCESS)
		ret = NET_RX_SUCCESS;

	/* skb was consumed */
	skb = NULL;

put_orig_node:
	if (orig_node)
		FUNC2(orig_node);
free_skb:
	FUNC10(skb);

	return ret;
}