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
struct binderfs_device {char* name; int major; int minor; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_CTL_ADD ; 
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int EEXIST ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct binderfs_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(int argc, char *argv[])
{
	int fd, ret, saved_errno;
	size_t len;
	struct binderfs_device device = { 0 };

	ret = FUNC12(CLONE_NEWNS);
	if (ret < 0) {
		FUNC2(stderr, "%s - Failed to unshare mount namespace\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	ret = FUNC6(NULL, "/", NULL, MS_REC | MS_PRIVATE, 0);
	if (ret < 0) {
		FUNC2(stderr, "%s - Failed to mount / as private\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	ret = FUNC5("/dev/binderfs", 0755);
	if (ret < 0 && errno != EEXIST) {
		FUNC2(stderr, "%s - Failed to create binderfs mountpoint\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	ret = FUNC6(NULL, "/dev/binderfs", "binder", 0, 0);
	if (ret < 0) {
		FUNC2(stderr, "%s - Failed to mount binderfs\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	FUNC4(device.name, "my-binder", FUNC10("my-binder"));

	fd = FUNC7("/dev/binderfs/binder-control", O_RDONLY | O_CLOEXEC);
	if (fd < 0) {
		FUNC2(stderr, "%s - Failed to open binder-control device\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	ret = FUNC3(fd, BINDER_CTL_ADD, &device);
	saved_errno = errno;
	FUNC0(fd);
	errno = saved_errno;
	if (ret < 0) {
		FUNC2(stderr, "%s - Failed to allocate new binder device\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	FUNC8("Allocated new binder device with major %d, minor %d, and name %s\n",
	       device.major, device.minor, device.name);

	ret = FUNC11("/dev/binderfs/my-binder");
	if (ret < 0) {
		FUNC2(stderr, "%s - Failed to delete binder device\n",
			FUNC9(errno));
		FUNC1(EXIT_FAILURE);
	}

	/* Cleanup happens when the mount namespace dies. */
	FUNC1(EXIT_SUCCESS);
}