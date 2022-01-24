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
struct tipc_peer {int is_up; } ;
struct tipc_monitor {int /*<<< orphan*/  lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_peer* FUNC0 (struct tipc_monitor*,int /*<<< orphan*/ ) ; 
 struct tipc_peer* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_monitor*,struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_monitor*) ; 
 struct tipc_peer* FUNC4 (struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_monitor*,int /*<<< orphan*/ ,struct tipc_peer**) ; 
 struct tipc_monitor* FUNC6 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct net *net, u32 addr, int bearer_id)
{
	struct tipc_monitor *mon = FUNC6(net, bearer_id);
	struct tipc_peer *self = FUNC1(net, bearer_id);
	struct tipc_peer *peer, *head;

	FUNC7(&mon->lock);
	peer = FUNC0(mon, addr);
	if (!peer && !FUNC5(mon, addr, &peer))
		goto exit;
	peer->is_up = true;
	head = FUNC4(peer);
	if (head == self)
		FUNC3(mon);
	FUNC2(mon, head);
exit:
	FUNC8(&mon->lock);
}