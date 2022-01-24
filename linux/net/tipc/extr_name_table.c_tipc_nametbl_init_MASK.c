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
struct tipc_net {int /*<<< orphan*/  nametbl_lock; struct name_table* nametbl; } ;
struct net {int dummy; } ;
struct name_table {int /*<<< orphan*/  cluster_scope_lock; int /*<<< orphan*/  cluster_scope; int /*<<< orphan*/  node_scope; int /*<<< orphan*/ * services; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TIPC_NAMETBL_SIZE ; 
 struct name_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tipc_net* FUNC5 (struct net*) ; 

int FUNC6(struct net *net)
{
	struct tipc_net *tn = FUNC5(net);
	struct name_table *nt;
	int i;

	nt = FUNC2(sizeof(*nt), GFP_KERNEL);
	if (!nt)
		return -ENOMEM;

	for (i = 0; i < TIPC_NAMETBL_SIZE; i++)
		FUNC0(&nt->services[i]);

	FUNC1(&nt->node_scope);
	FUNC1(&nt->cluster_scope);
	FUNC3(&nt->cluster_scope_lock);
	tn->nametbl = nt;
	FUNC4(&tn->nametbl_lock);
	return 0;
}