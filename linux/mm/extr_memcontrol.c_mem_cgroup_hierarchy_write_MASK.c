#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_2__ {struct cgroup_subsys_state* parent; } ;
struct mem_cgroup {int use_hierarchy; TYPE_1__ css; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct mem_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 

__attribute__((used)) static int FUNC2(struct cgroup_subsys_state *css,
				      struct cftype *cft, u64 val)
{
	int retval = 0;
	struct mem_cgroup *memcg = FUNC0(css);
	struct mem_cgroup *parent_memcg = FUNC0(memcg->css.parent);

	if (memcg->use_hierarchy == val)
		return 0;

	/*
	 * If parent's use_hierarchy is set, we can't make any modifications
	 * in the child subtrees. If it is unset, then the change can
	 * occur, provided the current cgroup has no children.
	 *
	 * For the root cgroup, parent_mem is NULL, we allow value to be
	 * set if there are no children.
	 */
	if ((!parent_memcg || !parent_memcg->use_hierarchy) &&
				(val == 1 || val == 0)) {
		if (!FUNC1(memcg))
			memcg->use_hierarchy = val;
		else
			retval = -EBUSY;
	} else
		retval = -EINVAL;

	return retval;
}