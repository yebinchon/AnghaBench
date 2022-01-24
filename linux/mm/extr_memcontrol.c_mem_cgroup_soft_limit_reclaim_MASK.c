#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup_tree_per_node {int /*<<< orphan*/  lock; int /*<<< orphan*/  rb_root; } ;
struct mem_cgroup_per_node {TYPE_2__* memcg; } ;
struct TYPE_6__ {int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ pg_data_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_7__ {int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*,unsigned long) ; 
 struct mem_cgroup_per_node* FUNC2 (struct mem_cgroup_tree_per_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup_per_node* FUNC5 (struct mem_cgroup_tree_per_node*) ; 
 unsigned long FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC7 (TYPE_2__*) ; 
 struct mem_cgroup_tree_per_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

unsigned long FUNC11(pg_data_t *pgdat, int order,
					    gfp_t gfp_mask,
					    unsigned long *total_scanned)
{
	unsigned long nr_reclaimed = 0;
	struct mem_cgroup_per_node *mz, *next_mz = NULL;
	unsigned long reclaimed;
	int loop = 0;
	struct mem_cgroup_tree_per_node *mctz;
	unsigned long excess;
	unsigned long nr_scanned;

	if (order > 0)
		return 0;

	mctz = FUNC8(pgdat->node_id);

	/*
	 * Do not even bother to check the largest node if the root
	 * is empty. Do it lockless to prevent lock bouncing. Races
	 * are acceptable as soft limit is best effort anyway.
	 */
	if (!mctz || FUNC0(&mctz->rb_root))
		return 0;

	/*
	 * This loop can run a while, specially if mem_cgroup's continuously
	 * keep exceeding their soft limit and putting the system under
	 * pressure
	 */
	do {
		if (next_mz)
			mz = next_mz;
		else
			mz = FUNC5(mctz);
		if (!mz)
			break;

		nr_scanned = 0;
		reclaimed = FUNC6(mz->memcg, pgdat,
						    gfp_mask, &nr_scanned);
		nr_reclaimed += reclaimed;
		*total_scanned += nr_scanned;
		FUNC9(&mctz->lock);
		FUNC3(mz, mctz);

		/*
		 * If we failed to reclaim anything from this memory cgroup
		 * it is time to move on to the next cgroup
		 */
		next_mz = NULL;
		if (!reclaimed)
			next_mz = FUNC2(mctz);

		excess = FUNC7(mz->memcg);
		/*
		 * One school of thought says that we should not add
		 * back the node to the tree if reclaim returns 0.
		 * But our reclaim could return 0, simply because due
		 * to priority we are exposing a smaller subset of
		 * memory to reclaim from. Consider this as a longer
		 * term TODO.
		 */
		/* If excess == 0, no tree ops */
		FUNC1(mz, mctz, excess);
		FUNC10(&mctz->lock);
		FUNC4(&mz->memcg->css);
		loop++;
		/*
		 * Could not reclaim anything and there are no more
		 * mem cgroups to try or we seem to be looping without
		 * reclaiming anything.
		 */
		if (!nr_reclaimed &&
			(next_mz == NULL ||
			loop > MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS))
			break;
	} while (!nr_reclaimed);
	if (next_mz)
		FUNC4(&next_mz->memcg->css);
	return nr_reclaimed;
}