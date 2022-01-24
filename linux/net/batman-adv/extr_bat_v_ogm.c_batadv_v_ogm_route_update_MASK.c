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
typedef  scalar_t__ u32 ;
struct ethhdr {int /*<<< orphan*/  h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_ogm2_packet {int dummy; } ;
struct batadv_neigh_node {struct batadv_orig_node* orig_node; } ;
struct TYPE_2__ {scalar_t__ last_seqno; scalar_t__ throughput; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_v; } ;
struct batadv_hard_iface {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_BATMAN ; 
 scalar_t__ BATADV_OGM_MAX_ORIGDIFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*) ; 
 struct batadv_neigh_ifinfo* FUNC1 (struct batadv_neigh_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_neigh_ifinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_orig_node*) ; 
 struct batadv_neigh_node* FUNC5 (struct batadv_orig_node*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*,struct batadv_neigh_node*) ; 
 struct batadv_orig_node* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct batadv_priv *bat_priv,
				      const struct ethhdr *ethhdr,
				      const struct batadv_ogm2_packet *ogm2,
				      struct batadv_orig_node *orig_node,
				      struct batadv_neigh_node *neigh_node,
				      struct batadv_hard_iface *if_incoming,
				      struct batadv_hard_iface *if_outgoing)
{
	struct batadv_neigh_node *router = NULL;
	struct batadv_orig_node *orig_neigh_node;
	struct batadv_neigh_node *orig_neigh_router = NULL;
	struct batadv_neigh_ifinfo *router_ifinfo = NULL, *neigh_ifinfo = NULL;
	u32 router_throughput, neigh_throughput;
	u32 router_last_seqno;
	u32 neigh_last_seqno;
	s32 neigh_seq_diff;
	bool forward = false;

	orig_neigh_node = FUNC7(bat_priv, ethhdr->h_source);
	if (!orig_neigh_node)
		goto out;

	orig_neigh_router = FUNC5(orig_neigh_node,
						   if_outgoing);

	/* drop packet if sender is not a direct neighbor and if we
	 * don't route towards it
	 */
	router = FUNC5(orig_node, if_outgoing);
	if (router && router->orig_node != orig_node && !orig_neigh_router) {
		FUNC0(BATADV_DBG_BATMAN, bat_priv,
			   "Drop packet: OGM via unknown neighbor!\n");
		goto out;
	}

	/* Mark the OGM to be considered for forwarding, and update routes
	 * if needed.
	 */
	forward = true;

	FUNC0(BATADV_DBG_BATMAN, bat_priv,
		   "Searching and updating originator entry of received packet\n");

	/* if this neighbor already is our next hop there is nothing
	 * to change
	 */
	if (router == neigh_node)
		goto out;

	/* don't consider neighbours with worse throughput.
	 * also switch route if this seqno is BATADV_V_MAX_ORIGDIFF newer than
	 * the last received seqno from our best next hop.
	 */
	if (router) {
		router_ifinfo = FUNC1(router, if_outgoing);
		neigh_ifinfo = FUNC1(neigh_node, if_outgoing);

		/* if these are not allocated, something is wrong. */
		if (!router_ifinfo || !neigh_ifinfo)
			goto out;

		neigh_last_seqno = neigh_ifinfo->bat_v.last_seqno;
		router_last_seqno = router_ifinfo->bat_v.last_seqno;
		neigh_seq_diff = neigh_last_seqno - router_last_seqno;
		router_throughput = router_ifinfo->bat_v.throughput;
		neigh_throughput = neigh_ifinfo->bat_v.throughput;

		if (neigh_seq_diff < BATADV_OGM_MAX_ORIGDIFF &&
		    router_throughput >= neigh_throughput)
			goto out;
	}

	FUNC6(bat_priv, orig_node, if_outgoing, neigh_node);
out:
	if (router)
		FUNC3(router);
	if (orig_neigh_router)
		FUNC3(orig_neigh_router);
	if (orig_neigh_node)
		FUNC4(orig_neigh_node);
	if (router_ifinfo)
		FUNC2(router_ifinfo);
	if (neigh_ifinfo)
		FUNC2(neigh_ifinfo);

	return forward;
}