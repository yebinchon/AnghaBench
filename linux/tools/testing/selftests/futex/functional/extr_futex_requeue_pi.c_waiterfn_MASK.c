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
struct thread_arg {scalar_t__ ret; scalar_t__ id; scalar_t__ timeout; } ;
typedef  int /*<<< orphan*/  futex_t ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 scalar_t__ RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  f1 ; 
 int /*<<< orphan*/  f2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  waiters_blocked ; 
 int /*<<< orphan*/  waiters_woken ; 

void *FUNC9(void *arg)
{
	struct thread_arg *args = (struct thread_arg *)arg;
	futex_t old_val;

	FUNC5("Waiter %ld: running\n", args->id);
	/* Each thread sleeps for a different amount of time
	 * This is to avoid races, because we don't lock the
	 * external mutex here */
	FUNC8(1000 * (long)args->id);

	old_val = f1;
	FUNC0(&waiters_blocked);
	FUNC5("Calling futex_wait_requeue_pi: %p (%u) -> %p\n",
	     &f1, f1, &f2);
	args->ret = FUNC4(&f1, old_val, &f2, args->timeout,
					  FUTEX_PRIVATE_FLAG);

	FUNC5("waiter %ld woke with %d %s\n", args->id, args->ret,
	     args->ret < 0 ? FUNC7(errno) : "");
	FUNC0(&waiters_woken);
	if (args->ret < 0) {
		if (args->timeout && errno == ETIMEDOUT)
			args->ret = 0;
		else {
			args->ret = RET_ERROR;
			FUNC1("futex_wait_requeue_pi\n", errno);
		}
		FUNC2(&f2, NULL, 0, FUTEX_PRIVATE_FLAG);
	}
	FUNC3(&f2, FUTEX_PRIVATE_FLAG);

	FUNC5("Waiter %ld: exiting with %d\n", args->id, args->ret);
	FUNC6((void *)&args->ret);
}