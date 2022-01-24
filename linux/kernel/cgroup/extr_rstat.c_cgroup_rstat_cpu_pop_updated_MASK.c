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
struct cgroup_rstat_cpu {struct cgroup* updated_next; struct cgroup* updated_children; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cgroup* FUNC1 (struct cgroup*) ; 
 struct cgroup_rstat_cpu* FUNC2 (struct cgroup*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct cgroup *FUNC4(struct cgroup *pos,
						   struct cgroup *root, int cpu)
{
	struct cgroup_rstat_cpu *rstatc;

	if (pos == root)
		return NULL;

	/*
	 * We're gonna walk down to the first leaf and visit/remove it.  We
	 * can pick whatever unvisited node as the starting point.
	 */
	if (!pos)
		pos = root;
	else
		pos = FUNC1(pos);

	/* walk down to the first leaf */
	while (true) {
		rstatc = FUNC2(pos, cpu);
		if (rstatc->updated_children == pos)
			break;
		pos = rstatc->updated_children;
	}

	/*
	 * Unlink @pos from the tree.  As the updated_children list is
	 * singly linked, we have to walk it to find the removal point.
	 * However, due to the way we traverse, @pos will be the first
	 * child in most cases. The only exception is @root.
	 */
	if (rstatc->updated_next) {
		struct cgroup *parent = FUNC1(pos);
		struct cgroup_rstat_cpu *prstatc = FUNC2(parent, cpu);
		struct cgroup_rstat_cpu *nrstatc;
		struct cgroup **nextp;

		nextp = &prstatc->updated_children;
		while (true) {
			nrstatc = FUNC2(*nextp, cpu);
			if (*nextp == pos)
				break;

			FUNC0(*nextp == parent);
			nextp = &nrstatc->updated_next;
		}

		*nextp = rstatc->updated_next;
		rstatc->updated_next = NULL;

		/*
		 * Paired with the one in cgroup_rstat_cpu_updated().
		 * Either they see NULL updated_next or we see their
		 * updated stat.
		 */
		FUNC3();

		return pos;
	}

	/* only happens for @root */
	return NULL;
}