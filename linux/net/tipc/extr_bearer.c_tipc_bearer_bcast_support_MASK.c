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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ broadcast; } ;
struct tipc_bearer {TYPE_1__ bcast_addr; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIPC_BROADCAST_SUPPORT ; 
 struct tipc_bearer* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(struct net *net, u32 bearer_id)
{
	bool supp = false;
	struct tipc_bearer *b;

	FUNC1();
	b = FUNC0(net, bearer_id);
	if (b)
		supp = (b->bcast_addr.broadcast == TIPC_BROADCAST_SUPPORT);
	FUNC2();
	return supp;
}