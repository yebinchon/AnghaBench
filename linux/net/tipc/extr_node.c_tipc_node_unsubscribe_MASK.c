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
struct tipc_node {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct tipc_node* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_node*) ; 

void FUNC7(struct net *net, struct list_head *subscr, u32 addr)
{
	struct tipc_node *n;

	if (FUNC0(net, addr))
		return;

	n = FUNC3(net, addr);
	if (!n) {
		FUNC2("Node unsubscribe rejected, unknown node 0x%x\n", addr);
		return;
	}
	FUNC5(n);
	FUNC1(subscr);
	FUNC6(n);
	FUNC4(n);
}