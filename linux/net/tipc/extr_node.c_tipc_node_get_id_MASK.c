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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct tipc_node {int /*<<< orphan*/  peer_id; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_NODEID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tipc_node* FUNC1 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 scalar_t__ FUNC3 (struct net*) ; 
 int /*<<< orphan*/ * FUNC4 (struct net*) ; 

bool FUNC5(struct net *net, u32 addr, u8 *id)
{
	u8 *own_id = FUNC4(net);
	struct tipc_node *n;

	if (!own_id)
		return true;

	if (addr == FUNC3(net)) {
		FUNC0(id, own_id, TIPC_NODEID_LEN);
		return true;
	}
	n = FUNC1(net, addr);
	if (!n)
		return false;

	FUNC0(id, &n->peer_id, TIPC_NODEID_LEN);
	FUNC2(n);
	return true;
}