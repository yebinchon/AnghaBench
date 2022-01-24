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
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSCONFIG_CMD_CREATE ; 
 int /*<<< orphan*/  FSCONFIG_SET_STRING ; 
 int /*<<< orphan*/  MOUNT_ATTR_RDONLY ; 
 int /*<<< orphan*/  MOVE_MOUNT_F_EMPTY_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[])
{
	int fsfd, mfd;

	/* Mount a publically available AFS filesystem */
	fsfd = FUNC5("afs", 0);
	if (fsfd == -1) {
		FUNC8("fsopen");
		FUNC3(1);
	}

	FUNC1(fsfd, FSCONFIG_SET_STRING, "source", "#grand.central.org:root.cell.", 0);
	FUNC1(fsfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);

	mfd = FUNC4(fsfd, 0, MOUNT_ATTR_RDONLY);
	if (mfd < 0)
		FUNC6(fsfd, "fsmount");
	FUNC0(FUNC2(fsfd));

	if (FUNC7(mfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH) < 0) {
		FUNC8("move_mount");
		FUNC3(1);
	}

	FUNC0(FUNC2(mfd));
	FUNC3(0);
}