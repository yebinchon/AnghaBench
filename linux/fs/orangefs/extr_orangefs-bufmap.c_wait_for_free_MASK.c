#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct slot_map {scalar_t__ c; TYPE_1__ q; } ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 long HZ ; 
 long ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 long slot_timeout_secs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 TYPE_2__ wait ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct slot_map *m)
{
	long left = slot_timeout_secs * HZ;
	FUNC0(wait);

	do {
		long n = left, t;
		if (FUNC4(FUNC6(&wait.entry)))
			FUNC1(&m->q, &wait);
		FUNC8(TASK_INTERRUPTIBLE);

		if (m->c > 0)
			break;

		if (m->c < 0) {
			/* we are waiting for map to be installed */
			/* it would better be there soon, or we go away */
			if (n > ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS * HZ)
				n = ORANGEFS_BUFMAP_WAIT_TIMEOUT_SECS * HZ;
		}
		FUNC11(&m->q.lock);
		t = FUNC7(n);
		FUNC10(&m->q.lock);
		if (FUNC12(!t) && n != left && m->c < 0)
			left = t;
		else
			left = t + (left - n);
		if (FUNC9(current))
			left = -EINTR;
	} while (left > 0);

	if (!FUNC6(&wait.entry))
		FUNC5(&wait.entry);
	else if (left <= 0 && FUNC13(&m->q))
		FUNC3(&m->q, TASK_INTERRUPTIBLE, NULL);
	FUNC2(TASK_RUNNING);

	if (FUNC4(left > 0))
		return 0;

	return left < 0 ? -EINTR : -ETIMEDOUT;
}