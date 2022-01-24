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
 int EAGAIN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ UMH_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  umhelper_sem ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ usermodehelper_disabled ; 
 int /*<<< orphan*/  usermodehelper_disabled_waitq ; 
 int /*<<< orphan*/  wait ; 

int FUNC7(void)
{
	FUNC0(wait);
	int ret = 0;

	FUNC1(&umhelper_sem);
	for (;;) {
		FUNC3(&usermodehelper_disabled_waitq, &wait,
				TASK_INTERRUPTIBLE);
		if (!usermodehelper_disabled)
			break;

		if (usermodehelper_disabled == UMH_DISABLED)
			ret = -EAGAIN;

		FUNC6(&umhelper_sem);

		if (ret)
			break;

		FUNC4();
		FUNC5();

		FUNC1(&umhelper_sem);
	}
	FUNC2(&usermodehelper_disabled_waitq, &wait);
	return ret;
}