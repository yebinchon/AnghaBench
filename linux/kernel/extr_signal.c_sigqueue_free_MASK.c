#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigqueue {int flags; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIGQUEUE_PREALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct sigqueue*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct sigqueue *q)
{
	unsigned long flags;
	spinlock_t *lock = &current->sighand->siglock;

	FUNC0(!(q->flags & SIGQUEUE_PREALLOC));
	/*
	 * We must hold ->siglock while testing q->list
	 * to serialize with collect_signal() or with
	 * __exit_signal()->flush_sigqueue().
	 */
	FUNC3(lock, flags);
	q->flags &= ~SIGQUEUE_PREALLOC;
	/*
	 * If it is queued it will be freed when dequeued,
	 * like the "regular" sigqueue.
	 */
	if (!FUNC2(&q->list))
		q = NULL;
	FUNC4(lock, flags);

	if (q)
		FUNC1(q);
}