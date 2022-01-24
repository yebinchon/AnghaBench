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
struct binderfs_device {int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  member_0; } ;
struct binder_version {int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_CTL_ADD ; 
 int /*<<< orphan*/  BINDER_VERSION ; 
 int EEXIST ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  MNT_DETACH ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct binderfs_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(void)
{
	int fd, ret, saved_errno;
	size_t len;
	ssize_t wret;
	bool keep = false;
	struct binderfs_device device = { 0 };
	struct binder_version version = { 0 };

	FUNC0();

	ret = FUNC9("/dev/binderfs", 0755);
	if (ret < 0) {
		if (errno != EEXIST)
			FUNC3(
				"%s - Failed to create binderfs mountpoint\n",
				FUNC13(errno));

		keep = true;
	}

	ret = FUNC10(NULL, "/dev/binderfs", "binder", 0, 0);
	if (ret < 0) {
		if (errno != ENODEV)
			FUNC3("%s - Failed to mount binderfs\n",
					   FUNC13(errno));

		keep ? : FUNC12("/dev/binderfs");
		FUNC4(
			"The Android binderfs filesystem is not available\n");
	}

	/* binderfs mount test passed */
	FUNC5();

	FUNC8(device.name, "my-binder", FUNC14("my-binder"));

	fd = FUNC11("/dev/binderfs/binder-control", O_RDONLY | O_CLOEXEC);
	if (fd < 0)
		FUNC3(
			"%s - Failed to open binder-control device\n",
			FUNC13(errno));

	ret = FUNC2(fd, BINDER_CTL_ADD, &device);
	saved_errno = errno;
	FUNC1(fd);
	errno = saved_errno;
	if (ret < 0) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3(
			"%s - Failed to allocate new binder device\n",
			FUNC13(errno));
	}

	FUNC7(
		"Allocated new binder device with major %d, minor %d, and name %s\n",
		device.major, device.minor, device.name);

	/* binder device allocation test passed */
	FUNC5();

	fd = FUNC11("/dev/binderfs/my-binder", O_CLOEXEC | O_RDONLY);
	if (fd < 0) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3("%s - Failed to open my-binder device\n",
				   FUNC13(errno));
	}

	ret = FUNC2(fd, BINDER_VERSION, &version);
	saved_errno = errno;
	FUNC1(fd);
	errno = saved_errno;
	if (ret < 0) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3(
			"%s - Failed to open perform BINDER_VERSION request\n",
			FUNC13(errno));
	}

	FUNC7("Detected binder version: %d\n",
		       version.protocol_version);

	/* binder transaction with binderfs binder device passed */
	FUNC5();

	ret = FUNC16("/dev/binderfs/my-binder");
	if (ret < 0) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3("%s - Failed to delete binder device\n",
				   FUNC13(errno));
	}

	/* binder device removal passed */
	FUNC5();

	ret = FUNC16("/dev/binderfs/binder-control");
	if (!ret) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3("Managed to delete binder-control device\n");
	} else if (errno != EPERM) {
		keep ? : FUNC12("/dev/binderfs");
		FUNC3(
			"%s - Failed to delete binder-control device but exited with unexpected error code\n",
			FUNC13(errno));
	}

	/* binder-control device removal failed as expected */
	FUNC6();

on_error:
	ret = FUNC15("/dev/binderfs", MNT_DETACH);
	keep ?: FUNC12("/dev/binderfs");
	if (ret < 0)
		FUNC3("%s - Failed to unmount binderfs\n",
				   FUNC13(errno));

	/* binderfs unmount test passed */
	FUNC5();
}