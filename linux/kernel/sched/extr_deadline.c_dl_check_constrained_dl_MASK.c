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
struct task_struct {int dummy; } ;
struct sched_dl_entity {int dl_throttled; scalar_t__ runtime; scalar_t__ dl_boosted; int /*<<< orphan*/  deadline; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_dl_entity*) ; 
 struct task_struct* FUNC2 (struct sched_dl_entity*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 struct rq* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct sched_dl_entity *dl_se)
{
	struct task_struct *p = FUNC2(dl_se);
	struct rq *rq = FUNC5(FUNC1(dl_se));

	if (FUNC3(dl_se->deadline, FUNC4(rq)) &&
	    FUNC3(FUNC4(rq), FUNC0(dl_se))) {
		if (FUNC7(dl_se->dl_boosted || !FUNC6(p)))
			return;
		dl_se->dl_throttled = 1;
		if (dl_se->runtime > 0)
			dl_se->runtime = 0;
	}
}