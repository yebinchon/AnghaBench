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
struct sched_dl_entity {int /*<<< orphan*/  dl_runtime; int /*<<< orphan*/  runtime; scalar_t__ dl_deadline; scalar_t__ deadline; scalar_t__ dl_throttled; int /*<<< orphan*/  dl_boosted; } ;
struct rq {int dummy; } ;
struct dl_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dl_rq* FUNC1 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct rq*) ; 
 struct rq* FUNC4 (struct dl_rq*) ; 

__attribute__((used)) static inline void FUNC5(struct sched_dl_entity *dl_se)
{
	struct dl_rq *dl_rq = FUNC1(dl_se);
	struct rq *rq = FUNC4(dl_rq);

	FUNC0(dl_se->dl_boosted);
	FUNC0(FUNC2(FUNC3(rq), dl_se->deadline));

	/*
	 * We are racing with the deadline timer. So, do nothing because
	 * the deadline timer handler will take care of properly recharging
	 * the runtime and postponing the deadline
	 */
	if (dl_se->dl_throttled)
		return;

	/*
	 * We use the regular wall clock time to set deadlines in the
	 * future; in fact, we must consider execution overheads (time
	 * spent on hardirq context, etc.).
	 */
	dl_se->deadline = FUNC3(rq) + dl_se->dl_deadline;
	dl_se->runtime = dl_se->dl_runtime;
}