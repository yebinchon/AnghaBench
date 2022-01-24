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
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {void* last_seen; } ;
struct TYPE_2__ {int elp_latest_seqno; int elp_interval; } ;
struct batadv_hardif_neigh_node {TYPE_1__ bat_v; void* last_seen; } ;
struct batadv_hard_iface {int dummy; } ;
struct batadv_elp_packet {int /*<<< orphan*/  elp_interval; int /*<<< orphan*/  seqno; int /*<<< orphan*/  orig; } ;
typedef  int s32 ;

/* Variables and functions */
 int BATADV_ELP_MAX_AGE ; 
 struct batadv_hardif_neigh_node* FUNC0 (struct batadv_hard_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hardif_neigh_node*) ; 
 struct batadv_neigh_node* FUNC2 (struct batadv_orig_node*,struct batadv_hard_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_orig_node*) ; 
 struct batadv_orig_node* FUNC5 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct batadv_priv *bat_priv,
				      u8 *neigh_addr,
				      struct batadv_hard_iface *if_incoming,
				      struct batadv_elp_packet *elp_packet)

{
	struct batadv_neigh_node *neigh;
	struct batadv_orig_node *orig_neigh;
	struct batadv_hardif_neigh_node *hardif_neigh;
	s32 seqno_diff;
	s32 elp_latest_seqno;

	orig_neigh = FUNC5(bat_priv, elp_packet->orig);
	if (!orig_neigh)
		return;

	neigh = FUNC2(orig_neigh,
						if_incoming, neigh_addr);
	if (!neigh)
		goto orig_free;

	hardif_neigh = FUNC0(if_incoming, neigh_addr);
	if (!hardif_neigh)
		goto neigh_free;

	elp_latest_seqno = hardif_neigh->bat_v.elp_latest_seqno;
	seqno_diff = FUNC6(elp_packet->seqno) - elp_latest_seqno;

	/* known or older sequence numbers are ignored. However always adopt
	 * if the router seems to have been restarted.
	 */
	if (seqno_diff < 1 && seqno_diff > -BATADV_ELP_MAX_AGE)
		goto hardif_free;

	neigh->last_seen = jiffies;
	hardif_neigh->last_seen = jiffies;
	hardif_neigh->bat_v.elp_latest_seqno = FUNC6(elp_packet->seqno);
	hardif_neigh->bat_v.elp_interval = FUNC6(elp_packet->elp_interval);

hardif_free:
	if (hardif_neigh)
		FUNC1(hardif_neigh);
neigh_free:
	if (neigh)
		FUNC3(neigh);
orig_free:
	if (orig_neigh)
		FUNC4(orig_neigh);
}