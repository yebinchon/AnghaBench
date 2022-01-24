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
 int /*<<< orphan*/  CLONE_NEWNS ; 
 scalar_t__ EXIT_SUCCESS ; 
 int MS_BIND ; 
 int MS_REMOUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (char*,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC10(const char *fstype, const char *mount_options,
			 int mount_flags, int remount_flags, int invalid_flags)
{
	pid_t child;

	child = FUNC5();
	if (child == -1) {
		FUNC3("fork failed: %s\n",
			FUNC7(errno));
	}
	if (child != 0) { /* parent */
		pid_t pid;
		int status;
		pid = FUNC9(child, &status, 0);
		if (pid == -1) {
			FUNC3("waitpid failed: %s\n",
				FUNC7(errno));
		}
		if (pid != child) {
			FUNC3("waited for %d got %d\n",
				child, pid);
		}
		if (!FUNC1(status)) {
			FUNC3("child did not terminate cleanly\n");
		}
		return FUNC0(status) == EXIT_SUCCESS ? true : false;
	}

	FUNC2();
	if (FUNC8(CLONE_NEWNS) != 0) {
		FUNC3("unshare(CLONE_NEWNS) failed: %s\n",
			FUNC7(errno));
	}

	if (FUNC6("testing", "/tmp", fstype, mount_flags, mount_options) != 0) {
		FUNC3("mount of %s with options '%s' on /tmp failed: %s\n",
		    fstype,
		    mount_options? mount_options : "",
		    FUNC7(errno));
	}

	FUNC2();

	if (FUNC8(CLONE_NEWNS) != 0) {
		FUNC3("unshare(CLONE_NEWNS) failed: %s\n",
			FUNC7(errno));
	}

	if (FUNC6("/tmp", "/tmp", "none",
		  MS_REMOUNT | MS_BIND | remount_flags, NULL) != 0) {
		/* system("cat /proc/self/mounts"); */
		FUNC3("remount of /tmp failed: %s\n",
		    FUNC7(errno));
	}

	if (FUNC6("/tmp", "/tmp", "none",
		  MS_REMOUNT | MS_BIND | invalid_flags, NULL) == 0) {
		/* system("cat /proc/self/mounts"); */
		FUNC3("remount of /tmp with invalid flags "
		    "succeeded unexpectedly\n");
	}
	FUNC4(EXIT_SUCCESS);
}