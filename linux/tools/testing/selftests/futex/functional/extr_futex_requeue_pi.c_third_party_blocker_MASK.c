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
struct thread_arg {scalar_t__ ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 scalar_t__ RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  wake_complete ; 

void *FUNC5(void *arg)
{
	struct thread_arg *args = (struct thread_arg *)arg;
	int ret2 = 0;

	args->ret = FUNC1(&f2, NULL, 0, FUTEX_PRIVATE_FLAG);
	if (args->ret)
		goto out;
	args->ret = FUNC3(&wake_complete, wake_complete, NULL,
			       FUTEX_PRIVATE_FLAG);
	ret2 = FUNC2(&f2, FUTEX_PRIVATE_FLAG);

 out:
	if (args->ret || ret2) {
		FUNC0("third_party_blocker() futex error", 0);
		args->ret = RET_ERROR;
	}

	FUNC4((void *)&args->ret);
}