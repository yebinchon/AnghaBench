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
typedef  scalar_t__ u32 ;
struct tipc_peer {scalar_t__ addr; } ;
struct tipc_nl_msg {int dummy; } ;
struct tipc_monitor {int /*<<< orphan*/  lock; struct tipc_peer* self; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct tipc_peer*,struct tipc_nl_msg*) ; 
 struct tipc_peer* FUNC1 (struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tipc_monitor* FUNC4 (struct net*,scalar_t__) ; 

int FUNC5(struct net *net, struct tipc_nl_msg *msg,
			     u32 bearer_id, u32 *prev_node)
{
	struct tipc_monitor *mon = FUNC4(net, bearer_id);
	struct tipc_peer *peer;

	if (!mon)
		return -EINVAL;

	FUNC2(&mon->lock);
	peer = mon->self;
	do {
		if (*prev_node) {
			if (peer->addr == *prev_node)
				*prev_node = 0;
			else
				continue;
		}
		if (FUNC0(peer, msg)) {
			*prev_node = peer->addr;
			FUNC3(&mon->lock);
			return -EMSGSIZE;
		}
	} while ((peer = FUNC1(peer)) != mon->self);
	FUNC3(&mon->lock);

	return 0;
}