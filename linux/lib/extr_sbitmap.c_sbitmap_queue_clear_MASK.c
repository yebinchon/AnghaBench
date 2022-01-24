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
struct TYPE_2__ {unsigned int depth; } ;
struct sbitmap_queue {int /*<<< orphan*/  alloc_hint; TYPE_1__ sb; int /*<<< orphan*/  round_robin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbitmap_queue*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct sbitmap_queue *sbq, unsigned int nr,
			 unsigned int cpu)
{
	/*
	 * Once the clear bit is set, the bit may be allocated out.
	 *
	 * Orders READ/WRITE on the asssociated instance(such as request
	 * of blk_mq) by this bit for avoiding race with re-allocation,
	 * and its pair is the memory barrier implied in __sbitmap_get_word.
	 *
	 * One invariant is that the clear bit has to be zero when the bit
	 * is in use.
	 */
	FUNC5();
	FUNC2(&sbq->sb, nr);

	/*
	 * Pairs with the memory barrier in set_current_state() to ensure the
	 * proper ordering of clear_bit_unlock()/waitqueue_active() in the waker
	 * and test_and_set_bit_lock()/prepare_to_wait()/finish_wait() in the
	 * waiter. See the comment on waitqueue_active().
	 */
	FUNC4();
	FUNC3(sbq);

	if (FUNC0(!sbq->round_robin && nr < sbq->sb.depth))
		*FUNC1(sbq->alloc_hint, cpu) = nr;
}