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
typedef  size_t u32 ;
struct tipc_net {int /*<<< orphan*/ * bearer_list; } ;
struct tipc_bearer {int /*<<< orphan*/  disc; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct tipc_bearer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_net_id ; 

void FUNC5(struct net *net, u32 bearer_id, u32 dest)
{
	struct tipc_net *tn = FUNC0(net, tipc_net_id);
	struct tipc_bearer *b;

	FUNC2();
	b = FUNC1(tn->bearer_list[bearer_id]);
	if (b)
		FUNC4(b->disc);
	FUNC3();
}