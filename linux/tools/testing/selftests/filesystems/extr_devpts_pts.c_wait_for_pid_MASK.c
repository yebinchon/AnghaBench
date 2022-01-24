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
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(pid_t pid)
{
	int status, ret;

again:
	ret = FUNC2(pid, &status, 0);
	if (ret == -1) {
		if (errno == EINTR)
			goto again;
		return -1;
	}
	if (ret != pid)
		goto again;

	if (!FUNC1(status) || FUNC0(status) != 0)
		return -1;

	return 0;
}