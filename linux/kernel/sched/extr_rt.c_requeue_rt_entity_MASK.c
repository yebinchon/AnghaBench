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
struct sched_rt_entity {int /*<<< orphan*/  run_list; } ;
struct rt_prio_array {struct list_head* queue; } ;
struct rt_rq {struct rt_prio_array active; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC2 (struct sched_rt_entity*) ; 
 int FUNC3 (struct sched_rt_entity*) ; 

__attribute__((used)) static void
FUNC4(struct rt_rq *rt_rq, struct sched_rt_entity *rt_se, int head)
{
	if (FUNC2(rt_se)) {
		struct rt_prio_array *array = &rt_rq->active;
		struct list_head *queue = array->queue + FUNC3(rt_se);

		if (head)
			FUNC0(&rt_se->run_list, queue);
		else
			FUNC1(&rt_se->run_list, queue);
	}
}