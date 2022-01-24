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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*) ; 
 int FUNC8 (int,char*,int) ; 

int FUNC9(int argc, char **argv)
{
	const char *path;
	char buf[5];
	int fd, rc;

	if (argc < 2) {
		FUNC1(stderr, "usage: %s <path>\n", argv[0]);
		return EXIT_FAILURE;
	}

	path = argv[1];

	/* attributes: EFI_VARIABLE_NON_VOLATILE |
	 *		EFI_VARIABLE_BOOTSERVICE_ACCESS |
	 *		EFI_VARIABLE_RUNTIME_ACCESS
	 */
	*(uint32_t *)buf = 0x7;
	buf[4] = 0;

	/* create a test variable */
	fd = FUNC3(path, O_WRONLY | O_CREAT, 0600);
	if (fd < 0) {
		FUNC4("open(O_WRONLY)");
		return EXIT_FAILURE;
	}

	rc = FUNC8(fd, buf, sizeof(buf));
	if (rc != sizeof(buf)) {
		FUNC4("write");
		return EXIT_FAILURE;
	}

	FUNC0(fd);

	rc = FUNC2(path);
	if (rc < 0) {
		FUNC4("ioctl(FS_IOC_GETFLAGS)");
		return EXIT_FAILURE;
	} else if (rc) {
		rc = FUNC6(path, 0);
		if (rc < 0) {
			FUNC4("ioctl(FS_IOC_SETFLAGS)");
			return EXIT_FAILURE;
		}
	}

	fd = FUNC3(path, O_RDONLY);
	if (fd < 0) {
		FUNC4("open");
		return EXIT_FAILURE;
	}

	if (FUNC7(path) < 0) {
		FUNC4("unlink");
		return EXIT_FAILURE;
	}

	rc = FUNC5(fd, buf, sizeof(buf));
	if (rc > 0) {
		FUNC1(stderr, "reading from an unlinked variable "
				"shouldn't be possible\n");
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}