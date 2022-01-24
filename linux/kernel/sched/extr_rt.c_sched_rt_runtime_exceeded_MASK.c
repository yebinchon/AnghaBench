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
typedef  scalar_t__ u64 ;
struct rt_rq {int rt_throttled; scalar_t__ rt_time; } ;
struct rt_bandwidth {int /*<<< orphan*/  rt_runtime; } ;

/* Variables and functions */
 scalar_t__ RUNTIME_INF ; 
 int /*<<< orphan*/  FUNC0 (struct rt_rq*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct rt_rq*) ; 
 struct rt_bandwidth* FUNC4 (struct rt_rq*) ; 
 scalar_t__ FUNC5 (struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_rq*) ; 
 scalar_t__ FUNC7 (struct rt_rq*) ; 

__attribute__((used)) static int FUNC8(struct rt_rq *rt_rq)
{
	u64 runtime = FUNC7(rt_rq);

	if (rt_rq->rt_throttled)
		return FUNC3(rt_rq);

	if (runtime >= FUNC5(rt_rq))
		return 0;

	FUNC0(rt_rq);
	runtime = FUNC7(rt_rq);
	if (runtime == RUNTIME_INF)
		return 0;

	if (rt_rq->rt_time > runtime) {
		struct rt_bandwidth *rt_b = FUNC4(rt_rq);

		/*
		 * Don't actually throttle groups that have no runtime assigned
		 * but accrue some time due to boosting.
		 */
		if (FUNC1(rt_b->rt_runtime)) {
			rt_rq->rt_throttled = 1;
			FUNC2("sched: RT throttling activated\n");
		} else {
			/*
			 * In case we did anyway, make it go away,
			 * replenishment is a joke, since it will replenish us
			 * with exactly 0 ns.
			 */
			rt_rq->rt_time = 0;
		}

		if (FUNC3(rt_rq)) {
			FUNC6(rt_rq);
			return 1;
		}
	}

	return 0;
}