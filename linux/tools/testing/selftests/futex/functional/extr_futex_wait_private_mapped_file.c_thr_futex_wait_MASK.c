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
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  RET_ERROR ; 
 int /*<<< orphan*/  TEST_NAME ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  val ; 
 int /*<<< orphan*/  wait_timeout ; 

void *FUNC6(void *arg)
{
	int ret;

	FUNC4("futex wait\n");
	ret = FUNC3(&val, 1, &wait_timeout, 0);
	if (ret && errno != EWOULDBLOCK && errno != ETIMEDOUT) {
		FUNC0("futex error.\n", errno);
		FUNC5(TEST_NAME, RET_ERROR);
		FUNC1(RET_ERROR);
	}

	if (ret && errno == ETIMEDOUT)
		FUNC2("waiter timedout\n");

	FUNC4("futex_wait: ret = %d, errno = %d\n", ret, errno);

	return NULL;
}