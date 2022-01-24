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
struct sched_rt_entity {scalar_t__ on_rq; int /*<<< orphan*/  on_list; } ;
struct rt_prio_array {int dummy; } ;
struct rt_rq {struct rt_prio_array active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_rt_entity*,struct rt_prio_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_rt_entity*,struct rt_rq*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 struct rt_rq* FUNC4 (struct sched_rt_entity*) ; 

__attribute__((used)) static void FUNC5(struct sched_rt_entity *rt_se, unsigned int flags)
{
	struct rt_rq *rt_rq = FUNC4(rt_se);
	struct rt_prio_array *array = &rt_rq->active;

	if (FUNC3(flags)) {
		FUNC0(!rt_se->on_list);
		FUNC1(rt_se, array);
	}
	rt_se->on_rq = 0;

	FUNC2(rt_se, rt_rq);
}