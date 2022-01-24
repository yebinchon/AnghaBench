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
struct page {int dummy; } ;
struct mem_cgroup_tree_per_node {int /*<<< orphan*/  lock; } ;
struct mem_cgroup_per_node {scalar_t__ on_tree; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*) ; 
 struct mem_cgroup_per_node* FUNC2 (struct mem_cgroup*,struct page*) ; 
 struct mem_cgroup* FUNC3 (struct mem_cgroup*) ; 
 unsigned long FUNC4 (struct mem_cgroup*) ; 
 struct mem_cgroup_tree_per_node* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct mem_cgroup *memcg, struct page *page)
{
	unsigned long excess;
	struct mem_cgroup_per_node *mz;
	struct mem_cgroup_tree_per_node *mctz;

	mctz = FUNC5(page);
	if (!mctz)
		return;
	/*
	 * Necessary to update all ancestors when hierarchy is used.
	 * because their event counter is not touched.
	 */
	for (; memcg; memcg = FUNC3(memcg)) {
		mz = FUNC2(memcg, page);
		excess = FUNC4(memcg);
		/*
		 * We have to update the tree if mz is on RB-tree or
		 * mem is over its softlimit.
		 */
		if (excess || mz->on_tree) {
			unsigned long flags;

			FUNC6(&mctz->lock, flags);
			/* if on-tree, remove it */
			if (mz->on_tree)
				FUNC1(mz, mctz);
			/*
			 * Insert again. mz->usage_in_excess will be updated.
			 * If excess is 0, no tree ops.
			 */
			FUNC0(mz, mctz, excess);
			FUNC7(&mctz->lock, flags);
		}
	}
}