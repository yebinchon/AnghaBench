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
struct TYPE_2__ {unsigned long min; unsigned long low; unsigned long emin; unsigned long elow; int /*<<< orphan*/  children_low_usage; int /*<<< orphan*/  children_min_usage; } ;
struct mem_cgroup {TYPE_1__ memory; } ;
typedef  enum mem_cgroup_protection { ____Placeholder_mem_cgroup_protection } mem_cgroup_protection ;

/* Variables and functions */
 int MEMCG_PROT_LOW ; 
 int MEMCG_PROT_MIN ; 
 int MEMCG_PROT_NONE ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (TYPE_1__*) ; 
 struct mem_cgroup* FUNC5 (struct mem_cgroup*) ; 
 struct mem_cgroup* root_mem_cgroup ; 

enum mem_cgroup_protection FUNC6(struct mem_cgroup *root,
						struct mem_cgroup *memcg)
{
	struct mem_cgroup *parent;
	unsigned long emin, parent_emin;
	unsigned long elow, parent_elow;
	unsigned long usage;

	if (FUNC2())
		return MEMCG_PROT_NONE;

	if (!root)
		root = root_mem_cgroup;
	if (memcg == root)
		return MEMCG_PROT_NONE;

	usage = FUNC4(&memcg->memory);
	if (!usage)
		return MEMCG_PROT_NONE;

	emin = memcg->memory.min;
	elow = memcg->memory.low;

	parent = FUNC5(memcg);
	/* No parent means a non-hierarchical mode on v1 memcg */
	if (!parent)
		return MEMCG_PROT_NONE;

	if (parent == root)
		goto exit;

	parent_emin = FUNC0(parent->memory.emin);
	emin = FUNC3(emin, parent_emin);
	if (emin && parent_emin) {
		unsigned long min_usage, siblings_min_usage;

		min_usage = FUNC3(usage, memcg->memory.min);
		siblings_min_usage = FUNC1(
			&parent->memory.children_min_usage);

		if (min_usage && siblings_min_usage)
			emin = FUNC3(emin, parent_emin * min_usage /
				   siblings_min_usage);
	}

	parent_elow = FUNC0(parent->memory.elow);
	elow = FUNC3(elow, parent_elow);
	if (elow && parent_elow) {
		unsigned long low_usage, siblings_low_usage;

		low_usage = FUNC3(usage, memcg->memory.low);
		siblings_low_usage = FUNC1(
			&parent->memory.children_low_usage);

		if (low_usage && siblings_low_usage)
			elow = FUNC3(elow, parent_elow * low_usage /
				   siblings_low_usage);
	}

exit:
	memcg->memory.emin = emin;
	memcg->memory.elow = elow;

	if (usage <= emin)
		return MEMCG_PROT_MIN;
	else if (usage <= elow)
		return MEMCG_PROT_LOW;
	else
		return MEMCG_PROT_NONE;
}