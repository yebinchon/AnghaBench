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
 long long TEST_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int,long long*,int) ; 

__attribute__((used)) static long long FUNC2(int fd)
{
	long long count;
	int ret;

	ret = FUNC1(fd, &count, sizeof(long long));
	if (ret != sizeof(long long)) {
		FUNC0("failed to read: %d\n", ret);
		return TEST_FAIL;
	}

	return count;
}