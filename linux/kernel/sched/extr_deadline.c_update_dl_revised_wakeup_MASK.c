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
typedef  int u64 ;
struct sched_dl_entity {int deadline; int runtime; int dl_density; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int BW_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct rq*) ; 

__attribute__((used)) static void
FUNC3(struct sched_dl_entity *dl_se, struct rq *rq)
{
	u64 laxity = dl_se->deadline - FUNC2(rq);

	/*
	 * If the task has deadline < period, and the deadline is in the past,
	 * it should already be throttled before this check.
	 *
	 * See update_dl_entity() comments for further details.
	 */
	FUNC0(FUNC1(dl_se->deadline, FUNC2(rq)));

	dl_se->runtime = (dl_se->dl_density * laxity) >> BW_SHIFT;
}