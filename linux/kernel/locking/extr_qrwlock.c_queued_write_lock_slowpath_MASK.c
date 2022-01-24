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
 scalar_t__ VAL ; 
 int /*<<< orphan*/  _QW_LOCKED ; 
 scalar_t__ _QW_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct qrwlock *lock)
{
	/* Put the writer into the wait queue */
	FUNC0(&lock->wait_lock);

	/* Try to acquire the lock directly if no reader is present */
	if (!FUNC6(&lock->cnts) &&
	    (FUNC3(&lock->cnts, 0, _QW_LOCKED) == 0))
		goto unlock;

	/* Set the waiting flag to notify readers that a writer is pending */
	FUNC2(_QW_WAITING, &lock->cnts);

	/* When no more readers or writers, set the locked flag */
	do {
		FUNC5(&lock->cnts, VAL == _QW_WAITING);
	} while (FUNC4(&lock->cnts, _QW_WAITING,
					_QW_LOCKED) != _QW_WAITING);
unlock:
	FUNC1(&lock->wait_lock);
}