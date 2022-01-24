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
typedef  int /*<<< orphan*/  ftrace ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int FUNC4 (char*) ; 
 int warn_on_notrace_sect ; 

int FUNC5(int argc, char *argv[])
{
	const char ftrace[] = "/ftrace.o";
	int ftrace_size = sizeof(ftrace) - 1;
	int n_error = 0;  /* gcc-4.3.0 false positive complaint */
	int c;
	int i;

	while ((c = FUNC2(argc, argv, "w")) >= 0) {
		switch (c) {
		case 'w':
			warn_on_notrace_sect = 1;
			break;
		default:
			FUNC1(stderr, "usage: recordmcount [-w] file.o...\n");
			return 0;
		}
	}

	if ((argc - optind) < 1) {
		FUNC1(stderr, "usage: recordmcount [-w] file.o...\n");
		return 0;
	}

	/* Process each file in turn, allowing deep failure. */
	for (i = optind; i < argc; i++) {
		char *file = argv[i];
		int len;

		/*
		 * The file kernel/trace/ftrace.o references the mcount
		 * function but does not call it. Since ftrace.o should
		 * not be traced anyway, we just skip it.
		 */
		len = FUNC4(file);
		if (len >= ftrace_size &&
		    FUNC3(file + (len - ftrace_size), ftrace) == 0)
			continue;

		if (FUNC0(file)) {
			FUNC1(stderr, "%s: failed\n", file);
			++n_error;
		}
	}
	return !!n_error;
}