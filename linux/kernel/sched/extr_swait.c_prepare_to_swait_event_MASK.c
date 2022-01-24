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
struct swait_queue_head {int /*<<< orphan*/  lock; } ;
struct swait_queue {int /*<<< orphan*/  task_list; } ;

/* Variables and functions */
 long ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct swait_queue_head*,struct swait_queue*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

long FUNC6(struct swait_queue_head *q, struct swait_queue *wait, int state)
{
	unsigned long flags;
	long ret = 0;

	FUNC2(&q->lock, flags);
	if (FUNC5(state, current)) {
		/*
		 * See prepare_to_wait_event(). TL;DR, subsequent swake_up_one()
		 * must not see us.
		 */
		FUNC1(&wait->task_list);
		ret = -ERESTARTSYS;
	} else {
		FUNC0(q, wait);
		FUNC4(state);
	}
	FUNC3(&q->lock, flags);

	return ret;
}