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
struct tipc_member {int /*<<< orphan*/  node; int /*<<< orphan*/  small_win; int /*<<< orphan*/  list; int /*<<< orphan*/  bc_acked; int /*<<< orphan*/  tree_node; } ;
struct tipc_group {int /*<<< orphan*/  dests; scalar_t__ bc_ackers; scalar_t__ bc_snd_nxt; int /*<<< orphan*/  member_cnt; int /*<<< orphan*/  members; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_member*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_group*,struct tipc_member*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tipc_group *grp,
				     struct tipc_member *m)
{
	FUNC3(&m->tree_node, &grp->members);
	grp->member_cnt--;

	/* Check if we were waiting for replicast ack from this member */
	if (grp->bc_ackers && FUNC1(m->bc_acked, grp->bc_snd_nxt - 1))
		grp->bc_ackers--;

	FUNC2(&m->list);
	FUNC2(&m->small_win);
	FUNC4(grp, m);

	/* If last member on a node, remove node from dest list */
	if (!FUNC5(grp, m->node))
		FUNC6(&grp->dests, m->node);

	FUNC0(m);
}