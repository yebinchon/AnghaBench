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
 int /*<<< orphan*/  argv ; 
 int /*<<< orphan*/  envp ; 
 int errno ; 
 int FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int fd, const char *path, int flags,
				int expected_errno, const char *errno_str)
{
	int rc;

	errno = 0;
	FUNC1("Check failure of execveat(%d, '%s', %d) with %s... ",
		fd, path?:"(null)", flags, errno_str);
	rc = FUNC0(fd, path, argv, envp, flags);

	if (rc > 0) {
		FUNC1("[FAIL] (unexpected success from execveat(2))\n");
		return 1;
	}
	if (errno != expected_errno) {
		FUNC1("[FAIL] (expected errno %d (%s) not %d (%s)\n",
			expected_errno, FUNC2(expected_errno),
			errno, FUNC2(errno));
		return 1;
	}
	FUNC1("[OK]\n");
	return 0;
}