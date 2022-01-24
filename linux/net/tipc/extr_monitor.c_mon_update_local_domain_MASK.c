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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u16 ;
struct tipc_peer {scalar_t__ addr; int /*<<< orphan*/  is_up; scalar_t__ applied; struct tipc_mon_domain* domain; } ;
struct tipc_mon_domain {scalar_t__ up_map; scalar_t__ len; scalar_t__ member_cnt; scalar_t__* members; scalar_t__ gen; } ;
struct tipc_monitor {scalar_t__ dom_gen; int /*<<< orphan*/  peer_cnt; struct tipc_mon_domain cache; struct tipc_peer* self; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct tipc_mon_domain*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_monitor*,struct tipc_peer*) ; 
 struct tipc_peer* FUNC7 (struct tipc_peer*) ; 

__attribute__((used)) static void FUNC8(struct tipc_monitor *mon)
{
	struct tipc_peer *self = mon->self;
	struct tipc_mon_domain *cache = &mon->cache;
	struct tipc_mon_domain *dom = self->domain;
	struct tipc_peer *peer = self;
	u64 prev_up_map = dom->up_map;
	u16 member_cnt, i;
	bool diff;

	/* Update local domain size based on current size of cluster */
	member_cnt = FUNC2(mon->peer_cnt) - 1;
	self->applied = member_cnt;

	/* Update native and cached outgoing local domain records */
	dom->len = FUNC1(dom, member_cnt);
	diff = dom->member_cnt != member_cnt;
	dom->member_cnt = member_cnt;
	for (i = 0; i < member_cnt; i++) {
		peer = FUNC7(peer);
		diff |= dom->members[i] != peer->addr;
		dom->members[i] = peer->addr;
		FUNC5(&dom->up_map, i, peer->is_up);
		cache->members[i] = FUNC3(peer->addr);
	}
	diff |= dom->up_map != prev_up_map;
	if (!diff)
		return;
	dom->gen = ++mon->dom_gen;
	cache->len = FUNC4(dom->len);
	cache->gen = FUNC4(dom->gen);
	cache->member_cnt = FUNC4(member_cnt);
	cache->up_map = FUNC0(dom->up_map);
	FUNC6(mon, self);
}