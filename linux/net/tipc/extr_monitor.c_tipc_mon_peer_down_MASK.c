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
struct tipc_peer {int applied; int is_head; int is_up; int is_local; scalar_t__ down_cnt; struct tipc_mon_domain* domain; } ;
struct tipc_monitor {int /*<<< orphan*/  lock; } ;
struct tipc_mon_domain {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_peer* FUNC0 (struct tipc_monitor*,int /*<<< orphan*/ ) ; 
 struct tipc_peer* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_mon_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_monitor*,struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_peer*,struct tipc_mon_domain*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_monitor*) ; 
 struct tipc_peer* FUNC6 (struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct tipc_monitor* FUNC8 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct net *net, u32 addr, int bearer_id)
{
	struct tipc_monitor *mon = FUNC8(net, bearer_id);
	struct tipc_peer *self = FUNC1(net, bearer_id);
	struct tipc_peer *peer, *head;
	struct tipc_mon_domain *dom;
	int applied;

	FUNC9(&mon->lock);
	peer = FUNC0(mon, addr);
	if (!peer) {
		FUNC7("Mon: unknown link %x/%u DOWN\n", addr, bearer_id);
		goto exit;
	}
	applied = peer->applied;
	peer->applied = 0;
	dom = peer->domain;
	peer->domain = NULL;
	if (peer->is_head)
		FUNC4(peer, dom, applied);
	FUNC2(dom);
	peer->is_up = false;
	peer->is_head = false;
	peer->is_local = false;
	peer->down_cnt = 0;
	head = FUNC6(peer);
	if (head == self)
		FUNC5(mon);
	FUNC3(mon, head);
exit:
	FUNC10(&mon->lock);
}