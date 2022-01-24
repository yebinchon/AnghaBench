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
struct tipc_service {int /*<<< orphan*/  lock; } ;
struct publication {int dummy; } ;
struct net {int dummy; } ;
struct name_table {int /*<<< orphan*/ * services; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_NODE_SCOPE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct name_table* FUNC4 (struct net*) ; 
 struct tipc_service* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tipc_service* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 struct publication* FUNC7 (struct net*,struct tipc_service*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct publication *FUNC8(struct net *net, u32 type,
					     u32 lower, u32 upper,
					     u32 scope, u32 node,
					     u32 port, u32 key)
{
	struct name_table *nt = FUNC4(net);
	struct tipc_service *sc;
	struct publication *p;

	if (scope > TIPC_NODE_SCOPE || lower > upper) {
		FUNC1("Failed to bind illegal {%u,%u,%u} with scope %u\n",
			 type, lower, upper, scope);
		return NULL;
	}
	sc = FUNC6(net, type);
	if (!sc)
		sc = FUNC5(type, &nt->services[FUNC0(type)]);
	if (!sc)
		return NULL;

	FUNC2(&sc->lock);
	p = FUNC7(net, sc, type, lower, upper,
				     scope, node, port, key);
	FUNC3(&sc->lock);
	return p;
}