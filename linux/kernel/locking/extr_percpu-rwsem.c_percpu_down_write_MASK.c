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
struct percpu_rw_semaphore {int /*<<< orphan*/  writer; int /*<<< orphan*/  readers_block; int /*<<< orphan*/  rw_sem; int /*<<< orphan*/  rss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct percpu_rw_semaphore*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct percpu_rw_semaphore *sem)
{
	/* Notify readers to take the slow path. */
	FUNC2(&sem->rss);

	FUNC1(&sem->rw_sem);

	/*
	 * Notify new readers to block; up until now, and thus throughout the
	 * longish rcu_sync_enter() above, new readers could still come in.
	 */
	FUNC0(sem->readers_block, 1);

	FUNC5(); /* D matches A */

	/*
	 * If they don't see our writer of readers_block, then we are
	 * guaranteed to see their sem->read_count increment, and therefore
	 * will wait for them.
	 */

	/* Wait for all now active readers to complete. */
	FUNC3(&sem->writer, FUNC4(sem));
}