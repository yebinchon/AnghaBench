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
struct sbq_wait_state {int /*<<< orphan*/  wait; } ;
struct sbitmap_queue {struct sbq_wait_state* ws; int /*<<< orphan*/  wake_index; } ;

/* Variables and functions */
 int SBQ_WAIT_QUEUES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sbitmap_queue *sbq)
{
	int i, wake_index;

	/*
	 * Pairs with the memory barrier in set_current_state() like in
	 * sbitmap_queue_wake_up().
	 */
	FUNC2();
	wake_index = FUNC0(&sbq->wake_index);
	for (i = 0; i < SBQ_WAIT_QUEUES; i++) {
		struct sbq_wait_state *ws = &sbq->ws[wake_index];

		if (FUNC3(&ws->wait))
			FUNC4(&ws->wait);

		wake_index = FUNC1(wake_index);
	}
}