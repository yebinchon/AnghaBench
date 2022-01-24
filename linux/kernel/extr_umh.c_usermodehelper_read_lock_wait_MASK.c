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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long EINVAL ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  umhelper_sem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usermodehelper_disabled ; 
 int /*<<< orphan*/  usermodehelper_disabled_waitq ; 
 int /*<<< orphan*/  wait ; 

long FUNC6(long timeout)
{
	FUNC0(wait);

	if (timeout < 0)
		return -EINVAL;

	FUNC1(&umhelper_sem);
	for (;;) {
		FUNC3(&usermodehelper_disabled_waitq, &wait,
				TASK_UNINTERRUPTIBLE);
		if (!usermodehelper_disabled)
			break;

		FUNC5(&umhelper_sem);

		timeout = FUNC4(timeout);
		if (!timeout)
			break;

		FUNC1(&umhelper_sem);
	}
	FUNC2(&usermodehelper_disabled_waitq, &wait);
	return timeout;
}