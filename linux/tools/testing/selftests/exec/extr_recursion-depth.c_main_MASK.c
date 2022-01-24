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
 int /*<<< orphan*/  CLONE_NEWNS ; 
 scalar_t__ ELOOP ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  FILENAME ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(void)
{
	if (FUNC6(CLONE_NEWNS) == -1) {
		if (errno == ENOSYS || errno == EPERM) {
			FUNC3(stderr, "error: unshare, errno %d\n", errno);
			return 4;
		}
		FUNC3(stderr, "error: unshare, errno %d\n", errno);
		return 1;
	}
	if (FUNC4(NULL, "/", NULL, MS_PRIVATE|MS_REC, NULL) == -1) {
		FUNC3(stderr, "error: mount '/', errno %d\n", errno);
		return 1;
	}
	/* Require "exec" filesystem. */
	if (FUNC4(NULL, "/tmp", "ramfs", 0, NULL) == -1) {
		FUNC3(stderr, "error: mount ramfs, errno %d\n", errno);
		return 1;
	}

#define FILENAME "/tmp/1"

	int fd = FUNC1(FILENAME, 0700);
	if (fd == -1) {
		FUNC3(stderr, "error: creat, errno %d\n", errno);
		return 1;
	}
#define S "#!" FILENAME "\n"
	if (FUNC7(fd, S, FUNC5(S)) != FUNC5(S)) {
		FUNC3(stderr, "error: write, errno %d\n", errno);
		return 1;
	}
	FUNC0(fd);

	int rv = FUNC2(FILENAME, NULL, NULL);
	if (rv == -1 && errno == ELOOP) {
		return 0;
	}
	FUNC3(stderr, "error: execve, rv %d, errno %ld\n", rv, errno);
	return 1;
}