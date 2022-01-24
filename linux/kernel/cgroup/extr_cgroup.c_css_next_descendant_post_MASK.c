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
struct cgroup_subsys_state {struct cgroup_subsys_state* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct cgroup_subsys_state* FUNC1 (struct cgroup_subsys_state*) ; 
 struct cgroup_subsys_state* FUNC2 (struct cgroup_subsys_state*,struct cgroup_subsys_state*) ; 

struct cgroup_subsys_state *
FUNC3(struct cgroup_subsys_state *pos,
			 struct cgroup_subsys_state *root)
{
	struct cgroup_subsys_state *next;

	FUNC0();

	/* if first iteration, visit leftmost descendant which may be @root */
	if (!pos)
		return FUNC1(root);

	/* if we visited @root, we're done */
	if (pos == root)
		return NULL;

	/* if there's an unvisited sibling, visit its leftmost descendant */
	next = FUNC2(pos, pos->parent);
	if (next)
		return FUNC1(next);

	/* no sibling left, visit parent */
	return pos->parent;
}