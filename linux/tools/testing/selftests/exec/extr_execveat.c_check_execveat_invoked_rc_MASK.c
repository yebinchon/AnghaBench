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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  argv ; 
 int /*<<< orphan*/  envp ; 
 int errno ; 
 int FUNC2 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(int fd, const char *path, int flags,
				     int expected_rc, int expected_rc2)
{
	int status;
	int rc;
	pid_t child;
	int pathlen = path ? FUNC7(path) : 0;

	if (pathlen > 40)
		FUNC5("Check success of execveat(%d, '%.20s...%s', %d)... ",
			fd, path, (path + pathlen - 20), flags);
	else
		FUNC5("Check success of execveat(%d, '%s', %d)... ",
			fd, path?:"(null)", flags);
	child = FUNC4();
	if (child < 0) {
		FUNC5("[FAIL] (fork() failed)\n");
		return 1;
	}
	if (child == 0) {
		/* Child: do execveat(). */
		rc = FUNC2(fd, path, argv, envp, flags);
		FUNC5("[FAIL]: execveat() failed, rc=%d errno=%d (%s)\n",
			rc, errno, FUNC6(errno));
		FUNC3(1);  /* should not reach here */
	}
	/* Parent: wait for & check child's exit status. */
	rc = FUNC8(child, &status, 0);
	if (rc != child) {
		FUNC5("[FAIL] (waitpid(%d,...) returned %d)\n", child, rc);
		return 1;
	}
	if (!FUNC1(status)) {
		FUNC5("[FAIL] (child %d did not exit cleanly, status=%08x)\n",
			child, status);
		return 1;
	}
	if ((FUNC0(status) != expected_rc) &&
	    (FUNC0(status) != expected_rc2)) {
		FUNC5("[FAIL] (child %d exited with %d not %d nor %d)\n",
			child, FUNC0(status), expected_rc, expected_rc2);
		return 1;
	}
	FUNC5("[OK]\n");
	return 0;
}