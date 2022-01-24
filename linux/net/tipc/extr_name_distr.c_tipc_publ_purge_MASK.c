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
struct tipc_net {int /*<<< orphan*/  nametbl_lock; } ;
struct publication {int /*<<< orphan*/  key; int /*<<< orphan*/  port; int /*<<< orphan*/  node; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; int /*<<< orphan*/  binding_node; int /*<<< orphan*/  upper; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct publication*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct publication* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net *net, struct publication *publ, u32 addr)
{
	struct tipc_net *tn = FUNC5(net);
	struct publication *p;

	FUNC2(&tn->nametbl_lock);
	p = FUNC4(net, publ->type, publ->lower, publ->upper,
				     publ->node, publ->key);
	if (p)
		FUNC6(net, &p->binding_node, addr);
	FUNC3(&tn->nametbl_lock);

	if (p != publ) {
		FUNC1("Unable to remove publication from failed node\n"
		       " (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\n",
		       publ->type, publ->lower, publ->node, publ->port,
		       publ->key);
	}

	if (p)
		FUNC0(p, rcu);
}