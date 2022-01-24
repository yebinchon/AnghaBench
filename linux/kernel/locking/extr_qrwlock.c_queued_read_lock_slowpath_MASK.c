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
struct qrwlock {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  cnts; } ;

/* Variables and functions */
 int VAL ; 
 int /*<<< orphan*/  _QR_BIAS ; 
 int _QW_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct qrwlock *lock)
{
	/*
	 * Readers come here when they cannot get the lock without waiting
	 */
	if (FUNC6(FUNC5())) {
		/*
		 * Readers in interrupt context will get the lock immediately
		 * if the writer is just waiting (not holding the lock yet),
		 * so spin with ACQUIRE semantics until the lock is available
		 * without waiting in the queue.
		 */
		FUNC3(&lock->cnts, !(VAL & _QW_LOCKED));
		return;
	}
	FUNC4(_QR_BIAS, &lock->cnts);

	/*
	 * Put the reader into the wait queue
	 */
	FUNC0(&lock->wait_lock);
	FUNC2(_QR_BIAS, &lock->cnts);

	/*
	 * The ACQUIRE semantics of the following spinning code ensure
	 * that accesses can't leak upwards out of our subsequent critical
	 * section in the case that the lock is currently held for write.
	 */
	FUNC3(&lock->cnts, !(VAL & _QW_LOCKED));

	/*
	 * Signal the next one in queue to become queue head
	 */
	FUNC1(&lock->wait_lock);
}