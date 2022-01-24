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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_node {int /*<<< orphan*/  capabilities; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_NODE_CAPABILITIES ; 
 struct tipc_node* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 scalar_t__ FUNC2 (int) ; 

u16 FUNC3(struct net *net, u32 addr)
{
	struct tipc_node *n;
	u16 caps;

	n = FUNC0(net, addr);
	if (FUNC2(!n))
		return TIPC_NODE_CAPABILITIES;
	caps = n->capabilities;
	FUNC1(n);
	return caps;
}