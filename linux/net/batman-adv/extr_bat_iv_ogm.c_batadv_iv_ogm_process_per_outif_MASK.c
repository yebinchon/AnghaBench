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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/ * h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_orig_ifinfo {scalar_t__ last_real_seqno; int last_ttl; } ;
struct batadv_ogm_packet {scalar_t__ tq; int ttl; int /*<<< orphan*/  seqno; int /*<<< orphan*/ * orig; int /*<<< orphan*/ * prev_sender; } ;
struct batadv_neigh_node {int /*<<< orphan*/ * addr; struct batadv_orig_node* orig_node; } ;
struct TYPE_2__ {scalar_t__ tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_iv; } ;
struct batadv_hardif_neigh_node {int /*<<< orphan*/  last_seen; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;
typedef  enum batadv_dup_status { ____Placeholder_batadv_dup_status } batadv_dup_status ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 struct batadv_hard_iface* BATADV_IF_DEFAULT ; 
 int BATADV_NEIGH_DUP ; 
 int BATADV_NO_DUP ; 
 int BATADV_PROTECTED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,...) ; 
 struct batadv_hardif_neigh_node* FUNC2 (struct batadv_hard_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_hardif_neigh_node*) ; 
 int FUNC4 (struct batadv_orig_node*,struct batadv_orig_node*,struct batadv_ogm_packet*,struct batadv_hard_iface*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_orig_node*,struct ethhdr*,struct batadv_ogm_packet*,int,int,struct batadv_hard_iface*,struct batadv_hard_iface*) ; 
 struct batadv_orig_node* FUNC6 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_ifinfo*,struct ethhdr*,struct batadv_ogm_packet*,struct batadv_hard_iface*,struct batadv_hard_iface*,int) ; 
 int FUNC8 (struct ethhdr*,struct batadv_ogm_packet*,struct batadv_hard_iface*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_orig_node*,struct batadv_ogm_packet*,int) ; 
 struct batadv_neigh_ifinfo* FUNC10 (struct batadv_neigh_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC11 (struct batadv_neigh_ifinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct batadv_neigh_node*) ; 
 struct batadv_orig_ifinfo* FUNC13 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC14 (struct batadv_orig_ifinfo*) ; 
 int /*<<< orphan*/  FUNC15 (struct batadv_orig_node*) ; 
 struct batadv_neigh_node* FUNC16 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC17 (struct batadv_priv*,struct batadv_ogm_packet*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 struct ethhdr* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct batadv_priv* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC22 (struct sk_buff const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(const struct sk_buff *skb, int ogm_offset,
				struct batadv_orig_node *orig_node,
				struct batadv_hard_iface *if_incoming,
				struct batadv_hard_iface *if_outgoing)
{
	struct batadv_priv *bat_priv = FUNC20(if_incoming->soft_iface);
	struct batadv_hardif_neigh_node *hardif_neigh = NULL;
	struct batadv_neigh_node *router = NULL;
	struct batadv_neigh_node *router_router = NULL;
	struct batadv_orig_node *orig_neigh_node;
	struct batadv_orig_ifinfo *orig_ifinfo;
	struct batadv_neigh_node *orig_neigh_router = NULL;
	struct batadv_neigh_ifinfo *router_ifinfo = NULL;
	struct batadv_ogm_packet *ogm_packet;
	enum batadv_dup_status dup_status;
	bool is_from_best_next_hop = false;
	bool is_single_hop_neigh = false;
	bool sameseq, similar_ttl;
	struct sk_buff *skb_priv;
	struct ethhdr *ethhdr;
	u8 *prev_sender;
	bool is_bidirect;

	/* create a private copy of the skb, as some functions change tq value
	 * and/or flags.
	 */
	skb_priv = FUNC22(skb, GFP_ATOMIC);
	if (!skb_priv)
		return;

	ethhdr = FUNC19(skb_priv);
	ogm_packet = (struct batadv_ogm_packet *)(skb_priv->data + ogm_offset);

	dup_status = FUNC8(ethhdr, ogm_packet,
						 if_incoming, if_outgoing);
	if (FUNC0(ethhdr->h_source, ogm_packet->orig))
		is_single_hop_neigh = true;

	if (dup_status == BATADV_PROTECTED) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: packet within seqno protection time (sender: %pM)\n",
			   ethhdr->h_source);
		goto out;
	}

	if (ogm_packet->tq == 0) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: originator packet with tq equal 0\n");
		goto out;
	}

	if (is_single_hop_neigh) {
		hardif_neigh = FUNC2(if_incoming,
						       ethhdr->h_source);
		if (hardif_neigh)
			hardif_neigh->last_seen = jiffies;
	}

	router = FUNC16(orig_node, if_outgoing);
	if (router) {
		router_router = FUNC16(router->orig_node,
						       if_outgoing);
		router_ifinfo = FUNC10(router, if_outgoing);
	}

	if ((router_ifinfo && router_ifinfo->bat_iv.tq_avg != 0) &&
	    (FUNC0(router->addr, ethhdr->h_source)))
		is_from_best_next_hop = true;

	prev_sender = ogm_packet->prev_sender;
	/* avoid temporary routing loops */
	if (router && router_router &&
	    (FUNC0(router->addr, prev_sender)) &&
	    !(FUNC0(ogm_packet->orig, prev_sender)) &&
	    (FUNC0(router->addr, router_router->addr))) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: ignoring all rebroadcast packets that may make me loop (sender: %pM)\n",
			   ethhdr->h_source);
		goto out;
	}

	if (if_outgoing == BATADV_IF_DEFAULT)
		FUNC17(bat_priv, ogm_packet, orig_node);

	/* if sender is a direct neighbor the sender mac equals
	 * originator mac
	 */
	if (is_single_hop_neigh)
		orig_neigh_node = orig_node;
	else
		orig_neigh_node = FUNC6(bat_priv,
							 ethhdr->h_source);

	if (!orig_neigh_node)
		goto out;

	/* Update nc_nodes of the originator */
	FUNC9(bat_priv, orig_node, orig_neigh_node,
				 ogm_packet, is_single_hop_neigh);

	orig_neigh_router = FUNC16(orig_neigh_node,
						   if_outgoing);

	/* drop packet if sender is not a direct neighbor and if we
	 * don't route towards it
	 */
	if (!is_single_hop_neigh && !orig_neigh_router) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: OGM via unknown neighbor!\n");
		goto out_neigh;
	}

	is_bidirect = FUNC4(orig_node, orig_neigh_node,
					    ogm_packet, if_incoming,
					    if_outgoing);

	/* update ranking if it is not a duplicate or has the same
	 * seqno and similar ttl as the non-duplicate
	 */
	orig_ifinfo = FUNC13(orig_node, if_outgoing);
	if (!orig_ifinfo)
		goto out_neigh;

	sameseq = orig_ifinfo->last_real_seqno == FUNC21(ogm_packet->seqno);
	similar_ttl = (orig_ifinfo->last_ttl - 3) <= ogm_packet->ttl;

	if (is_bidirect && (dup_status == BATADV_NO_DUP ||
			    (sameseq && similar_ttl))) {
		FUNC7(bat_priv, orig_node,
					  orig_ifinfo, ethhdr,
					  ogm_packet, if_incoming,
					  if_outgoing, dup_status);
	}
	FUNC14(orig_ifinfo);

	/* only forward for specific interface, not for the default one. */
	if (if_outgoing == BATADV_IF_DEFAULT)
		goto out_neigh;

	/* is single hop (direct) neighbor */
	if (is_single_hop_neigh) {
		/* OGMs from secondary interfaces should only scheduled once
		 * per interface where it has been received, not multiple times
		 */
		if (ogm_packet->ttl <= 2 &&
		    if_incoming != if_outgoing) {
			FUNC1(BATADV_DBG_BATMAN, bat_priv,
				   "Drop packet: OGM from secondary interface and wrong outgoing interface\n");
			goto out_neigh;
		}
		/* mark direct link on incoming interface */
		FUNC5(orig_node, ethhdr, ogm_packet,
				      is_single_hop_neigh,
				      is_from_best_next_hop, if_incoming,
				      if_outgoing);

		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Forwarding packet: rebroadcast neighbor packet with direct link flag\n");
		goto out_neigh;
	}

	/* multihop originator */
	if (!is_bidirect) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: not received via bidirectional link\n");
		goto out_neigh;
	}

	if (dup_status == BATADV_NEIGH_DUP) {
		FUNC1(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: duplicate packet received\n");
		goto out_neigh;
	}

	FUNC1(BATADV_DBG_BATMAN, bat_priv,
		   "Forwarding packet: rebroadcast originator packet\n");
	FUNC5(orig_node, ethhdr, ogm_packet,
			      is_single_hop_neigh, is_from_best_next_hop,
			      if_incoming, if_outgoing);

out_neigh:
	if (orig_neigh_node && !is_single_hop_neigh)
		FUNC15(orig_neigh_node);
out:
	if (router_ifinfo)
		FUNC11(router_ifinfo);
	if (router)
		FUNC12(router);
	if (router_router)
		FUNC12(router_router);
	if (orig_neigh_router)
		FUNC12(orig_neigh_router);
	if (hardif_neigh)
		FUNC3(hardif_neigh);

	FUNC18(skb_priv);
}