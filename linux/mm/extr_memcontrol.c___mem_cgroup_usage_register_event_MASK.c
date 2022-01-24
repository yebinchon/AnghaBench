#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup_thresholds {TYPE_2__* primary; TYPE_2__* spare; } ;
struct mem_cgroup_threshold_ary {int size; int current_threshold; TYPE_1__* entries; } ;
struct mem_cgroup_threshold {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  thresholds_lock; struct mem_cgroup_thresholds memsw_thresholds; struct mem_cgroup_thresholds thresholds; } ;
struct eventfd_ctx {int dummy; } ;
typedef  enum res_type { ____Placeholder_res_type } res_type ;
struct TYPE_6__ {int size; int /*<<< orphan*/  entries; } ;
struct TYPE_5__ {unsigned long threshold; struct eventfd_ctx* eventfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int _MEM ; 
 int _MEMSWAP ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  compare_thresholds ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct mem_cgroup_threshold_ary* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct mem_cgroup_threshold_ary*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_cgroup_threshold_ary*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct mem_cgroup *memcg,
	struct eventfd_ctx *eventfd, const char *args, enum res_type type)
{
	struct mem_cgroup_thresholds *thresholds;
	struct mem_cgroup_threshold_ary *new;
	unsigned long threshold;
	unsigned long usage;
	int i, size, ret;

	ret = FUNC8(args, "-1", &threshold);
	if (ret)
		return ret;

	FUNC6(&memcg->thresholds_lock);

	if (type == _MEM) {
		thresholds = &memcg->thresholds;
		usage = FUNC4(memcg, false);
	} else if (type == _MEMSWAP) {
		thresholds = &memcg->memsw_thresholds;
		usage = FUNC4(memcg, true);
	} else
		FUNC0();

	/* Check if a threshold crossed before adding a new one */
	if (thresholds->primary)
		FUNC1(memcg, type == _MEMSWAP);

	size = thresholds->primary ? thresholds->primary->size + 1 : 1;

	/* Allocate memory for new array of thresholds */
	new = FUNC3(FUNC11(new, entries, size), GFP_KERNEL);
	if (!new) {
		ret = -ENOMEM;
		goto unlock;
	}
	new->size = size;

	/* Copy thresholds (if any) to new array */
	if (thresholds->primary) {
		FUNC5(new->entries, thresholds->primary->entries, (size - 1) *
				sizeof(struct mem_cgroup_threshold));
	}

	/* Add new threshold */
	new->entries[size - 1].eventfd = eventfd;
	new->entries[size - 1].threshold = threshold;

	/* Sort thresholds. Registering of new threshold isn't time-critical */
	FUNC10(new->entries, size, sizeof(struct mem_cgroup_threshold),
			compare_thresholds, NULL);

	/* Find current threshold */
	new->current_threshold = -1;
	for (i = 0; i < size; i++) {
		if (new->entries[i].threshold <= usage) {
			/*
			 * new->current_threshold will not be used until
			 * rcu_assign_pointer(), so it's safe to increment
			 * it here.
			 */
			++new->current_threshold;
		} else
			break;
	}

	/* Free old spare buffer and save old primary buffer as spare */
	FUNC2(thresholds->spare);
	thresholds->spare = thresholds->primary;

	FUNC9(thresholds->primary, new);

	/* To be sure that nobody uses thresholds */
	FUNC12();

unlock:
	FUNC7(&memcg->thresholds_lock);

	return ret;
}