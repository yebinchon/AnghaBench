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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(int argc, char **argv)
{
	const char *path;
	char buf[4];
	int fd, rc;

	if (argc < 2) {
		FUNC0(stderr, "usage: %s <path>\n", argv[0]);
		return EXIT_FAILURE;
	}

	path = argv[1];

	/* create a test variable */
	fd = FUNC1(path, O_RDWR | O_CREAT, 0600);
	if (fd < 0) {
		FUNC2("open(O_WRONLY)");
		return EXIT_FAILURE;
	}

	rc = FUNC3(fd, buf, sizeof(buf));
	if (rc != 0) {
		FUNC0(stderr, "Reading a new var should return EOF\n");
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}