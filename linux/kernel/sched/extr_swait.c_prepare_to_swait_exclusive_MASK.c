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
struct swait_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swait_queue_head*,struct swait_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct swait_queue_head *q, struct swait_queue *wait, int state)
{
	unsigned long flags;

	FUNC1(&q->lock, flags);
	FUNC0(q, wait);
	FUNC3(state);
	FUNC2(&q->lock, flags);
}