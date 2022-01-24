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
struct tipc_peer {int down_cnt; int is_local; int is_head; } ;
struct tipc_monitor {scalar_t__ list_gen; scalar_t__ dom_gen; int /*<<< orphan*/  lock; } ;
struct tipc_mon_state {int probing; int monitoring; scalar_t__ list_gen; scalar_t__ acked_gen; int reset; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int MAX_PEER_DOWN_EVENTS ; 
 struct tipc_peer* FUNC0 (struct tipc_monitor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct tipc_monitor*) ; 
 struct tipc_monitor* FUNC4 (struct net*,int) ; 

void FUNC5(struct net *net, u32 addr,
			struct tipc_mon_state *state,
			int bearer_id)
{
	struct tipc_monitor *mon = FUNC4(net, bearer_id);
	struct tipc_peer *peer;

	if (!FUNC3(net, mon)) {
		state->probing = false;
		state->monitoring = true;
		return;
	}

	/* Used cached state if table has not changed */
	if (!state->probing &&
	    (state->list_gen == mon->list_gen) &&
	    (state->acked_gen == mon->dom_gen))
		return;

	FUNC1(&mon->lock);
	peer = FUNC0(mon, addr);
	if (peer) {
		state->probing = state->acked_gen != mon->dom_gen;
		state->probing |= peer->down_cnt;
		state->reset |= peer->down_cnt >= MAX_PEER_DOWN_EVENTS;
		state->monitoring = peer->is_local;
		state->monitoring |= peer->is_head;
		state->list_gen = mon->list_gen;
	}
	FUNC2(&mon->lock);
}