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
struct subprocess_info {int wait; int retval; int /*<<< orphan*/ * complete; int /*<<< orphan*/  work; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int UMH_KILLABLE ; 
 int UMH_NO_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct subprocess_info*) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 scalar_t__ usermodehelper_disabled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC9(struct subprocess_info *sub_info, int wait)
{
	FUNC0(done);
	int retval = 0;

	if (!sub_info->path) {
		FUNC1(sub_info);
		return -EINVAL;
	}
	FUNC2();
	if (usermodehelper_disabled) {
		retval = -EBUSY;
		goto out;
	}

	/*
	 * If there is no binary for us to call, then just return and get out of
	 * here.  This allows us to set STATIC_USERMODEHELPER_PATH to "" and
	 * disable all call_usermodehelper() calls.
	 */
	if (FUNC5(sub_info->path) == 0)
		goto out;

	/*
	 * Set the completion pointer only if there is a waiter.
	 * This makes it possible to use umh_complete to free
	 * the data structure in case of UMH_NO_WAIT.
	 */
	sub_info->complete = (wait == UMH_NO_WAIT) ? NULL : &done;
	sub_info->wait = wait;

	FUNC4(system_unbound_wq, &sub_info->work);
	if (wait == UMH_NO_WAIT)	/* task has freed sub_info */
		goto unlock;

	if (wait & UMH_KILLABLE) {
		retval = FUNC7(&done);
		if (!retval)
			goto wait_done;

		/* umh_complete() will see NULL and free sub_info */
		if (FUNC8(&sub_info->complete, NULL))
			goto unlock;
		/* fallthrough, umh_complete() was already called */
	}

	FUNC6(&done);
wait_done:
	retval = sub_info->retval;
out:
	FUNC1(sub_info);
unlock:
	FUNC3();
	return retval;
}