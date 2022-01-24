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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct tipc_peer {int applied; struct tipc_mon_domain* domain; scalar_t__ down_cnt; int /*<<< orphan*/  is_up; } ;
struct tipc_monitor {int /*<<< orphan*/  lock; } ;
struct tipc_mon_state {int probing; int synched; int peer_gen; int acked_gen; } ;
struct tipc_mon_domain {int member_cnt; int gen; int ack_gen; int len; int /*<<< orphan*/ * members; int /*<<< orphan*/  up_map; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tipc_mon_domain*,int) ; 
 struct tipc_peer* FUNC2 (struct tipc_monitor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_mon_domain*) ; 
 struct tipc_mon_domain* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_mon_domain*,struct tipc_mon_domain*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_monitor*,struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_monitor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_peer*,struct tipc_mon_domain*,int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_peer*) ; 
 struct tipc_monitor* FUNC13 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct net *net, void *data, u16 dlen, u32 addr,
		  struct tipc_mon_state *state, int bearer_id)
{
	struct tipc_monitor *mon = FUNC13(net, bearer_id);
	struct tipc_mon_domain *arrv_dom = data;
	struct tipc_mon_domain dom_bef;
	struct tipc_mon_domain *dom;
	struct tipc_peer *peer;
	u16 new_member_cnt = FUNC11(arrv_dom->member_cnt);
	int new_dlen = FUNC1(arrv_dom, new_member_cnt);
	u16 new_gen = FUNC11(arrv_dom->gen);
	u16 acked_gen = FUNC11(arrv_dom->ack_gen);
	bool probing = state->probing;
	int i, applied_bef;

	state->probing = false;

	/* Sanity check received domain record */
	if (dlen < FUNC1(arrv_dom, 0))
		return;
	if (dlen != FUNC1(arrv_dom, new_member_cnt))
		return;
	if ((dlen < new_dlen) || FUNC11(arrv_dom->len) != new_dlen)
		return;

	/* Synch generation numbers with peer if link just came up */
	if (!state->synched) {
		state->peer_gen = new_gen - 1;
		state->acked_gen = acked_gen;
		state->synched = true;
	}

	if (FUNC9(acked_gen, state->acked_gen))
		state->acked_gen = acked_gen;

	/* Drop duplicate unless we are waiting for a probe response */
	if (!FUNC9(new_gen, state->peer_gen) && !probing)
		return;

	FUNC14(&mon->lock);
	peer = FUNC2(mon, addr);
	if (!peer || !peer->is_up)
		goto exit;

	/* Peer is confirmed, stop any ongoing probing */
	peer->down_cnt = 0;

	/* Task is done for duplicate record */
	if (!FUNC9(new_gen, state->peer_gen))
		goto exit;

	state->peer_gen = new_gen;

	/* Cache current domain record for later use */
	dom_bef.member_cnt = 0;
	dom = peer->domain;
	if (dom)
		FUNC5(&dom_bef, dom, dom->len);

	/* Transform and store received domain record */
	if (!dom || (dom->len < new_dlen)) {
		FUNC3(dom);
		dom = FUNC4(new_dlen, GFP_ATOMIC);
		peer->domain = dom;
		if (!dom)
			goto exit;
	}
	dom->len = new_dlen;
	dom->gen = new_gen;
	dom->member_cnt = new_member_cnt;
	dom->up_map = FUNC0(arrv_dom->up_map);
	for (i = 0; i < new_member_cnt; i++)
		dom->members[i] = FUNC10(arrv_dom->members[i]);

	/* Update peers affected by this domain record */
	applied_bef = peer->applied;
	FUNC6(mon, peer);
	FUNC8(peer, &dom_bef, applied_bef);
	FUNC7(mon, FUNC12(peer));
exit:
	FUNC15(&mon->lock);
}