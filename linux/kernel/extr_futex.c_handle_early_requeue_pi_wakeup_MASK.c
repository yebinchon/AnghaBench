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
typedef  union futex_key {int dummy; } futex_key ;
struct hrtimer_sleeper {int /*<<< orphan*/  task; } ;
struct futex_q {int /*<<< orphan*/  list; int /*<<< orphan*/ * lock_ptr; int /*<<< orphan*/  key; } ;
struct futex_hash_bucket {int /*<<< orphan*/  chain; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ERESTARTNOINTR ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct futex_hash_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,union futex_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
int FUNC5(struct futex_hash_bucket *hb,
				   struct futex_q *q, union futex_key *key2,
				   struct hrtimer_sleeper *timeout)
{
	int ret = 0;

	/*
	 * With the hb lock held, we avoid races while we process the wakeup.
	 * We only need to hold hb (and not hb2) to ensure atomicity as the
	 * wakeup code can't change q.key from uaddr to uaddr2 if we hold hb.
	 * It can't be requeued from uaddr2 to something else since we don't
	 * support a PI aware source futex for requeue.
	 */
	if (!FUNC2(&q->key, key2)) {
		FUNC0(q->lock_ptr && (&hb->lock != q->lock_ptr));
		/*
		 * We were woken prior to requeue by a timeout or a signal.
		 * Unqueue the futex_q and determine which it was.
		 */
		FUNC3(&q->list, &hb->chain);
		FUNC1(hb);

		/* Handle spurious wakeups gracefully */
		ret = -EWOULDBLOCK;
		if (timeout && !timeout->task)
			ret = -ETIMEDOUT;
		else if (FUNC4(current))
			ret = -ERESTARTNOINTR;
	}
	return ret;
}