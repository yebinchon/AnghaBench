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
struct tipc_bc_base {int primary_bearer; int bcast_support; int* dests; int /*<<< orphan*/  link; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int INVALID_BEARER_ID ; 
 int MAX_BEARERS ; 
 struct tipc_bc_base* FUNC0 (struct net*) ; 
 int FUNC1 (struct net*,int) ; 
 int FUNC2 (struct net*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct net*) ; 

__attribute__((used)) static void FUNC7(struct net *net)
{
	struct tipc_bc_base *bb = FUNC0(net);
	int all_dests =  FUNC3(bb->link);
	int i, mtu, prim;

	bb->primary_bearer = INVALID_BEARER_ID;
	bb->bcast_support = true;

	if (!all_dests)
		return;

	for (i = 0; i < MAX_BEARERS; i++) {
		if (!bb->dests[i])
			continue;

		mtu = FUNC2(net, i);
		if (mtu < FUNC4(bb->link))
			FUNC5(bb->link, mtu);
		bb->bcast_support &= FUNC1(net, i);
		if (bb->dests[i] < all_dests)
			continue;

		bb->primary_bearer = i;

		/* Reduce risk that all nodes select same primary */
		if ((i ^ FUNC6(net)) & 1)
			break;
	}
	prim = bb->primary_bearer;
	if (prim != INVALID_BEARER_ID)
		bb->bcast_support = FUNC1(net, prim);
}