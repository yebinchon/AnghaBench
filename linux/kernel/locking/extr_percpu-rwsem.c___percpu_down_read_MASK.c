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
struct percpu_rw_semaphore {int /*<<< orphan*/  rw_sem; int /*<<< orphan*/ * read_count; int /*<<< orphan*/  readers_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct percpu_rw_semaphore*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct percpu_rw_semaphore *sem, int try)
{
	/*
	 * Due to having preemption disabled the decrement happens on
	 * the same CPU as the increment, avoiding the
	 * increment-on-one-CPU-and-decrement-on-another problem.
	 *
	 * If the reader misses the writer's assignment of readers_block, then
	 * the writer is guaranteed to see the reader's increment.
	 *
	 * Conversely, any readers that increment their sem->read_count after
	 * the writer looks are guaranteed to see the readers_block value,
	 * which in turn means that they are guaranteed to immediately
	 * decrement their sem->read_count, so that it doesn't matter that the
	 * writer missed them.
	 */

	FUNC7(); /* A matches D */

	/*
	 * If !readers_block the critical section starts here, matched by the
	 * release in percpu_up_write().
	 */
	if (FUNC3(!FUNC6(&sem->readers_block)))
		return 1;

	/*
	 * Per the above comment; we still have preemption disabled and
	 * will thus decrement on the same CPU as we incremented.
	 */
	FUNC1(sem);

	if (try)
		return 0;

	/*
	 * We either call schedule() in the wait, or we'll fall through
	 * and reschedule on the preempt_enable() in percpu_down_read().
	 */
	FUNC5();

	/*
	 * Avoid lockdep for the down/up_read() we already have them.
	 */
	FUNC0(&sem->rw_sem);
	FUNC8(*sem->read_count);
	FUNC2(&sem->rw_sem);

	FUNC4();
	return 1;
}