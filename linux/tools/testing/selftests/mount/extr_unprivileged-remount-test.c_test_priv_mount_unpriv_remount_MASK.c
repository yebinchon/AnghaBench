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
 int MS_REC ; 
 int MS_REMOUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 () ; 
 int FUNC6 (char const*,char const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(void)
{
	pid_t child;
	int ret;
	const char *orig_path = "/dev";
	const char *dest_path = "/tmp";
	int orig_mnt_flags, remount_mnt_flags;

	child = FUNC5();
	if (child == -1) {
		FUNC3("fork failed: %s\n",
			FUNC8(errno));
	}
	if (child != 0) { /* parent */
		pid_t pid;
		int status;
		pid = FUNC10(child, &status, 0);
		if (pid == -1) {
			FUNC3("waitpid failed: %s\n",
				FUNC8(errno));
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

	orig_mnt_flags = FUNC7(orig_path);

	FUNC2();
	ret = FUNC9(CLONE_NEWNS);
	if (ret != 0) {
		FUNC3("unshare(CLONE_NEWNS) failed: %s\n",
			FUNC8(errno));
	}

	ret = FUNC6(orig_path, dest_path, "bind", MS_BIND | MS_REC, NULL);
	if (ret != 0) {
		FUNC3("recursive bind mount of %s onto %s failed: %s\n",
			orig_path, dest_path, FUNC8(errno));
	}

	ret = FUNC6(dest_path, dest_path, "none",
		    MS_REMOUNT | MS_BIND | orig_mnt_flags , NULL);
	if (ret != 0) {
		/* system("cat /proc/self/mounts"); */
		FUNC3("remount of /tmp failed: %s\n",
		    FUNC8(errno));
	}

	remount_mnt_flags = FUNC7(dest_path);
	if (orig_mnt_flags != remount_mnt_flags) {
		FUNC3("Mount flags unexpectedly changed during remount of %s originally mounted on %s\n",
			dest_path, orig_path);
	}
	FUNC4(EXIT_SUCCESS);
}