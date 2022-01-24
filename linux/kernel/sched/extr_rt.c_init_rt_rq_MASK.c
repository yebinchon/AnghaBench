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
struct TYPE_2__ {int curr; int next; } ;
struct rt_prio_array {int /*<<< orphan*/  bitmap; scalar_t__ queue; } ;
struct rt_rq {int /*<<< orphan*/  rt_runtime_lock; scalar_t__ rt_runtime; scalar_t__ rt_throttled; scalar_t__ rt_time; scalar_t__ rt_queued; int /*<<< orphan*/  pushable_tasks; scalar_t__ overloaded; scalar_t__ rt_nr_migratory; TYPE_1__ highest_prio; struct rt_prio_array active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_RT_PRIO ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rt_rq *rt_rq)
{
	struct rt_prio_array *array;
	int i;

	array = &rt_rq->active;
	for (i = 0; i < MAX_RT_PRIO; i++) {
		FUNC0(array->queue + i);
		FUNC1(i, array->bitmap);
	}
	/* delimiter for bitsearch: */
	FUNC2(MAX_RT_PRIO, array->bitmap);

#if defined CONFIG_SMP
	rt_rq->highest_prio.curr = MAX_RT_PRIO;
	rt_rq->highest_prio.next = MAX_RT_PRIO;
	rt_rq->rt_nr_migratory = 0;
	rt_rq->overloaded = 0;
	plist_head_init(&rt_rq->pushable_tasks);
#endif /* CONFIG_SMP */
	/* We start is dequeued state, because no RT tasks are queued */
	rt_rq->rt_queued = 0;

	rt_rq->rt_time = 0;
	rt_rq->rt_throttled = 0;
	rt_rq->rt_runtime = 0;
	FUNC4(&rt_rq->rt_runtime_lock);
}