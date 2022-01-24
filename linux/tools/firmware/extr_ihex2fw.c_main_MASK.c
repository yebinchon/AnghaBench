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
typedef  int /*<<< orphan*/  uint8_t ;
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (int,char**,char*) ; 
 int include_jump ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,...) ; 
 int optind ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int sort_records ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int wide_records ; 

int FUNC11(int argc, char **argv)
{
	int infd, outfd;
	struct stat st;
	uint8_t *data;
	int opt;

	while ((opt = FUNC2(argc, argv, "wsj")) != -1) {
		switch (opt) {
		case 'w':
			wide_records = 1;
			break;
		case 's':
			sort_records = 1;
			break;
		case 'j':
			include_jump = 1;
			break;
		default:
			return FUNC10();
		}
	}

	if (optind + 2 != argc)
		return FUNC10();

	if (!FUNC8(argv[optind], "-"))
		infd = 0;
	else
		infd = FUNC4(argv[optind], O_RDONLY);
	if (infd == -1) {
		FUNC0(stderr, "Failed to open source file: %s",
			FUNC9(errno));
		return FUNC10();
	}
	if (FUNC1(infd, &st)) {
		FUNC6("stat");
		return 1;
	}
	data = FUNC3(NULL, st.st_size, PROT_READ, MAP_SHARED, infd, 0);
	if (data == MAP_FAILED) {
		FUNC6("mmap");
		return 1;
	}

	if (!FUNC8(argv[optind+1], "-"))
		outfd = 1;
	else
		outfd = FUNC4(argv[optind+1], O_TRUNC|O_CREAT|O_WRONLY, 0644);
	if (outfd == -1) {
		FUNC0(stderr, "Failed to open destination file: %s",
			FUNC9(errno));
		return FUNC10();
	}
	if (FUNC7(data, st.st_size))
		return 1;

	return FUNC5(outfd);
}