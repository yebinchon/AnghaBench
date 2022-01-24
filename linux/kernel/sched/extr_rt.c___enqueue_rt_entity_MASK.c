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
struct sched_rt_entity {int on_list; int on_rq; int /*<<< orphan*/  run_list; } ;
struct rt_prio_array {int /*<<< orphan*/  bitmap; struct list_head* queue; } ;
struct rt_rq {int /*<<< orphan*/  rt_nr_running; struct rt_prio_array active; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 unsigned int ENQUEUE_HEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_rt_entity*,struct rt_prio_array*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct rt_rq* FUNC3 (struct sched_rt_entity*) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_rt_entity*,struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 struct rt_rq* FUNC8 (struct sched_rt_entity*) ; 
 scalar_t__ FUNC9 (struct rt_rq*) ; 
 int FUNC10 (struct sched_rt_entity*) ; 

__attribute__((used)) static void FUNC11(struct sched_rt_entity *rt_se, unsigned int flags)
{
	struct rt_rq *rt_rq = FUNC8(rt_se);
	struct rt_prio_array *array = &rt_rq->active;
	struct rt_rq *group_rq = FUNC3(rt_se);
	struct list_head *queue = array->queue + FUNC10(rt_se);

	/*
	 * Don't enqueue the group if its throttled, or when empty.
	 * The latter is a consequence of the former when a child group
	 * get throttled and the current group doesn't have any other
	 * active members.
	 */
	if (group_rq && (FUNC9(group_rq) || !group_rq->rt_nr_running)) {
		if (rt_se->on_list)
			FUNC1(rt_se, array);
		return;
	}

	if (FUNC7(flags)) {
		FUNC0(rt_se->on_list);
		if (flags & ENQUEUE_HEAD)
			FUNC5(&rt_se->run_list, queue);
		else
			FUNC6(&rt_se->run_list, queue);

		FUNC2(FUNC10(rt_se), array->bitmap);
		rt_se->on_list = 1;
	}
	rt_se->on_rq = 1;

	FUNC4(rt_se, rt_rq);
}