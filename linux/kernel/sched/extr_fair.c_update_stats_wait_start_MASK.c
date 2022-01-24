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
struct TYPE_2__ {int /*<<< orphan*/  wait_start; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sched_entity*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sched_entity*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC9(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	u64 wait_start, prev_wait_start;

	if (!FUNC5())
		return;

	wait_start = FUNC3(FUNC4(cfs_rq));
	prev_wait_start = FUNC6(se->statistics.wait_start);

	if (FUNC1(se) && FUNC8(FUNC7(se)) &&
	    FUNC2(wait_start > prev_wait_start))
		wait_start -= prev_wait_start;

	FUNC0(se->statistics.wait_start, wait_start);
}