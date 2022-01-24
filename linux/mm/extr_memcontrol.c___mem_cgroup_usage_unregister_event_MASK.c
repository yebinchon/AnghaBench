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
struct mem_cgroup_thresholds {struct mem_cgroup_threshold_ary* spare; struct mem_cgroup_threshold_ary* primary; } ;
struct mem_cgroup_threshold_ary {int size; int current_threshold; TYPE_1__* entries; } ;
struct mem_cgroup {int /*<<< orphan*/  thresholds_lock; struct mem_cgroup_thresholds memsw_thresholds; struct mem_cgroup_thresholds thresholds; } ;
struct eventfd_ctx {int dummy; } ;
typedef  enum res_type { ____Placeholder_res_type } res_type ;
struct TYPE_2__ {unsigned long threshold; struct eventfd_ctx* eventfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int _MEM ; 
 int _MEMSWAP ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup_threshold_ary*) ; 
 unsigned long FUNC3 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup_threshold_ary*,struct mem_cgroup_threshold_ary*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct mem_cgroup *memcg,
	struct eventfd_ctx *eventfd, enum res_type type)
{
	struct mem_cgroup_thresholds *thresholds;
	struct mem_cgroup_threshold_ary *new;
	unsigned long usage;
	int i, j, size;

	FUNC4(&memcg->thresholds_lock);

	if (type == _MEM) {
		thresholds = &memcg->thresholds;
		usage = FUNC3(memcg, false);
	} else if (type == _MEMSWAP) {
		thresholds = &memcg->memsw_thresholds;
		usage = FUNC3(memcg, true);
	} else
		FUNC0();

	if (!thresholds->primary)
		goto unlock;

	/* Check if a threshold crossed before removing */
	FUNC1(memcg, type == _MEMSWAP);

	/* Calculate new number of threshold */
	size = 0;
	for (i = 0; i < thresholds->primary->size; i++) {
		if (thresholds->primary->entries[i].eventfd != eventfd)
			size++;
	}

	new = thresholds->spare;

	/* Set thresholds array to NULL if we don't have thresholds */
	if (!size) {
		FUNC2(new);
		new = NULL;
		goto swap_buffers;
	}

	new->size = size;

	/* Copy thresholds and find current threshold */
	new->current_threshold = -1;
	for (i = 0, j = 0; i < thresholds->primary->size; i++) {
		if (thresholds->primary->entries[i].eventfd == eventfd)
			continue;

		new->entries[j] = thresholds->primary->entries[i];
		if (new->entries[j].threshold <= usage) {
			/*
			 * new->current_threshold will not be used
			 * until rcu_assign_pointer(), so it's safe to increment
			 * it here.
			 */
			++new->current_threshold;
		}
		j++;
	}

swap_buffers:
	/* Swap primary and spare array */
	thresholds->spare = thresholds->primary;

	FUNC6(thresholds->primary, new);

	/* To be sure that nobody uses thresholds */
	FUNC7();

	/* If all events are unregistered, free the spare array */
	if (!new) {
		FUNC2(thresholds->spare);
		thresholds->spare = NULL;
	}
unlock:
	FUNC5(&memcg->thresholds_lock);
}