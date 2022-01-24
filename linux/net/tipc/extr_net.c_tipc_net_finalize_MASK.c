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
struct tipc_net {int /*<<< orphan*/  node_addr; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_CFG_SRV ; 
 int /*<<< orphan*/  TIPC_CLUSTER_SCOPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 

__attribute__((used)) static void FUNC6(struct net *net, u32 addr)
{
	struct tipc_net *tn = FUNC3(net);

	if (FUNC0(&tn->node_addr, 0, addr))
		return;
	FUNC4(net, addr);
	FUNC1(net);
	FUNC5(net);
	FUNC2(net, TIPC_CFG_SRV, addr, addr,
			     TIPC_CLUSTER_SCOPE, 0, addr);
}