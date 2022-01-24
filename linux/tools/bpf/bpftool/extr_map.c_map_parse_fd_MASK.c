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
 int /*<<< orphan*/  BPF_OBJ_MAP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC7(int *argc, char ***argv)
{
	int fd;

	if (FUNC2(**argv, "id")) {
		unsigned int id;
		char *endptr;

		FUNC0();

		id = FUNC6(**argv, &endptr, 0);
		if (*endptr) {
			FUNC4("can't parse %s as ID", **argv);
			return -1;
		}
		FUNC0();

		fd = FUNC1(id);
		if (fd < 0)
			FUNC4("get map by id (%u): %s", id, FUNC5(errno));
		return fd;
	} else if (FUNC2(**argv, "pinned")) {
		char *path;

		FUNC0();

		path = **argv;
		FUNC0();

		return FUNC3(path, BPF_OBJ_MAP);
	}

	FUNC4("expected 'id' or 'pinned', got: '%s'?", **argv);
	return -1;
}