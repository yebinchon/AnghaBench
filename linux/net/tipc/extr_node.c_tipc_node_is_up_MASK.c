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

/* Variables and functions */
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tipc_node*) ; 
 struct tipc_node* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_node*) ; 

bool FUNC4(struct net *net, u32 addr)
{
	struct tipc_node *n;
	bool retval = false;

	if (FUNC0(net, addr))
		return true;

	n = FUNC2(net, addr);
	if (!n)
		return false;
	retval = FUNC1(n);
	FUNC3(n);
	return retval;
}