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
struct publication {int /*<<< orphan*/  binding_node; } ;
struct net {int dummy; } ;
struct distr_item {int /*<<< orphan*/  key; int /*<<< orphan*/  port; int /*<<< orphan*/  type; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;

/* Variables and functions */
 scalar_t__ PUBLICATION ; 
 int /*<<< orphan*/  TIPC_CLUSTER_SCOPE ; 
 scalar_t__ WITHDRAWAL ; 
 int /*<<< orphan*/  FUNC0 (struct publication*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  rcu ; 
 struct publication* FUNC4 (struct net*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 struct publication* FUNC5 (struct net*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC8(struct net *net, struct distr_item *i,
				u32 node, u32 dtype)
{
	struct publication *p = NULL;
	u32 lower = FUNC1(i->lower);
	u32 upper = FUNC1(i->upper);
	u32 type = FUNC1(i->type);
	u32 port = FUNC1(i->port);
	u32 key = FUNC1(i->key);

	if (dtype == PUBLICATION) {
		p = FUNC4(net, type, lower, upper,
					     TIPC_CLUSTER_SCOPE, node,
					     port, key);
		if (p) {
			FUNC6(net, &p->binding_node, node);
			return true;
		}
	} else if (dtype == WITHDRAWAL) {
		p = FUNC5(net, type, lower,
					     upper, node, key);
		if (p) {
			FUNC7(net, &p->binding_node, node);
			FUNC0(p, rcu);
			return true;
		}
		FUNC3("Failed to remove binding %u,%u from %x\n",
				    type, lower, node);
	} else {
		FUNC2("Unrecognized name table message received\n");
	}
	return false;
}