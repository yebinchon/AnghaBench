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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait_start; int /*<<< orphan*/  wait_sum; int /*<<< orphan*/  wait_count; int /*<<< orphan*/  wait_max; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sched_entity*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC9 (struct sched_entity*) ; 
 scalar_t__ FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC12(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	struct task_struct *p;
	u64 delta;

	if (!FUNC7())
		return;

	delta = FUNC5(FUNC6(cfs_rq)) - FUNC8(se->statistics.wait_start);

	if (FUNC3(se)) {
		p = FUNC9(se);
		if (FUNC10(p)) {
			/*
			 * Preserve migrating task's wait time so wait_start
			 * time stamp can be adjusted to accumulate wait time
			 * prior to migration.
			 */
			FUNC2(se->statistics.wait_start, delta);
			return;
		}
		FUNC11(p, delta);
	}

	FUNC2(se->statistics.wait_max,
		      FUNC4(FUNC8(se->statistics.wait_max), delta));
	FUNC1(se->statistics.wait_count);
	FUNC0(se->statistics.wait_sum, delta);
	FUNC2(se->statistics.wait_start, 0);
}