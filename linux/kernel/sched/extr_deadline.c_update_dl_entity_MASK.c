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
struct sched_dl_entity {int /*<<< orphan*/  dl_runtime; int /*<<< orphan*/  runtime; scalar_t__ dl_deadline; scalar_t__ deadline; int /*<<< orphan*/  dl_boosted; } ;
struct rq {int dummy; } ;
struct dl_rq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sched_dl_entity*,struct sched_dl_entity*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_dl_entity*) ; 
 struct dl_rq* FUNC2 (struct sched_dl_entity*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct rq*) ; 
 struct rq* FUNC5 (struct dl_rq*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sched_dl_entity*,struct rq*) ; 

__attribute__((used)) static void FUNC8(struct sched_dl_entity *dl_se,
			     struct sched_dl_entity *pi_se)
{
	struct dl_rq *dl_rq = FUNC2(dl_se);
	struct rq *rq = FUNC5(dl_rq);

	if (FUNC3(dl_se->deadline, FUNC4(rq)) ||
	    FUNC0(dl_se, pi_se, FUNC4(rq))) {

		if (FUNC6(!FUNC1(dl_se) &&
			     !FUNC3(dl_se->deadline, FUNC4(rq)) &&
			     !dl_se->dl_boosted)){
			FUNC7(dl_se, rq);
			return;
		}

		dl_se->deadline = FUNC4(rq) + pi_se->dl_deadline;
		dl_se->runtime = pi_se->dl_runtime;
	}
}