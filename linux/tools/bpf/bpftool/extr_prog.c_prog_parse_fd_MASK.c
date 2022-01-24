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
 int /*<<< orphan*/  BPF_OBJ_PROG ; 
 int /*<<< orphan*/  BPF_TAG_FMT ; 
 int BPF_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC9(int *argc, char ***argv)
{
	int fd;

	if (FUNC2(**argv, "id")) {
		unsigned int id;
		char *endptr;

		FUNC0();

		id = FUNC8(**argv, &endptr, 0);
		if (*endptr) {
			FUNC4("can't parse %s as ID", **argv);
			return -1;
		}
		FUNC0();

		fd = FUNC1(id);
		if (fd < 0)
			FUNC4("get by id (%u): %s", id, FUNC7(errno));
		return fd;
	} else if (FUNC2(**argv, "tag")) {
		unsigned char tag[BPF_TAG_SIZE];

		FUNC0();

		if (FUNC6(**argv, BPF_TAG_FMT, tag, tag + 1, tag + 2,
			   tag + 3, tag + 4, tag + 5, tag + 6, tag + 7)
		    != BPF_TAG_SIZE) {
			FUNC4("can't parse tag");
			return -1;
		}
		FUNC0();

		return FUNC5(tag);
	} else if (FUNC2(**argv, "pinned")) {
		char *path;

		FUNC0();

		path = **argv;
		FUNC0();

		return FUNC3(path, BPF_OBJ_PROG);
	}

	FUNC4("expected 'id', 'tag' or 'pinned', got: '%s'?", **argv);
	return -1;
}