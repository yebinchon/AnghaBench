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
struct display_info {int size; scalar_t__ oper; int auto_path; int verbose; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  disp ;

/* Variables and functions */
 scalar_t__ OPER_CREATE_NODE ; 
 scalar_t__ OPER_WRITE_PROP ; 
 scalar_t__ FUNC0 (struct display_info*,char*,char**,int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct display_info*,char,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int FUNC5(int argc, char *argv[])
{
	struct display_info disp;
	char *filename = NULL;

	FUNC2(&disp, '\0', sizeof(disp));
	disp.size = -1;
	disp.oper = OPER_WRITE_PROP;
	for (;;) {
		int c = FUNC1(argc, argv, "chpt:v");
		if (c == -1)
			break;

		/*
		 * TODO: add options to:
		 * - delete property
		 * - delete node (optionally recursively)
		 * - rename node
		 * - pack fdt before writing
		 * - set amount of free space when writing
		 * - expand fdt if value doesn't fit
		 */
		switch (c) {
		case 'c':
			disp.oper = OPER_CREATE_NODE;
			break;
		case 'h':
		case '?':
			FUNC3(NULL);
		case 'p':
			disp.auto_path = 1;
			break;
		case 't':
			if (FUNC4(optarg, &disp.type,
					&disp.size))
				FUNC3("Invalid type string");
			break;

		case 'v':
			disp.verbose = 1;
			break;
		}
	}

	if (optind < argc)
		filename = argv[optind++];
	if (!filename)
		FUNC3("Missing filename");

	argv += optind;
	argc -= optind;

	if (disp.oper == OPER_WRITE_PROP) {
		if (argc < 1)
			FUNC3("Missing node");
		if (argc < 2)
			FUNC3("Missing property");
	}

	if (FUNC0(&disp, filename, argv, argc))
		return 1;
	return 0;
}