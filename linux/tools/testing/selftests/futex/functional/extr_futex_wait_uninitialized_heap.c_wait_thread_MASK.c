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
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  RET_ERROR ; 
 int /*<<< orphan*/  RET_PASS ; 
 int /*<<< orphan*/  buf ; 
 scalar_t__ child_blocked ; 
 int /*<<< orphan*/  child_ret ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *FUNC3(void *arg)
{
	int res;

	child_ret = RET_PASS;
	res = FUNC1(buf, 1, NULL, 0);
	child_blocked = 0;

	if (res != 0 && errno != EWOULDBLOCK) {
		FUNC0("futex failure\n", errno);
		child_ret = RET_ERROR;
	}
	FUNC2(NULL);
}