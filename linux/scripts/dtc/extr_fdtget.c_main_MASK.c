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
struct display_info {int size; int /*<<< orphan*/  default_val; int /*<<< orphan*/  mode; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  disp ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_LIST_PROPS ; 
 int /*<<< orphan*/  MODE_LIST_SUBNODES ; 
 int /*<<< orphan*/  MODE_SHOW_VALUE ; 
 scalar_t__ FUNC0 (struct display_info*,char*,char**,int,int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct display_info*,char,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int FUNC5(int argc, char *argv[])
{
	char *filename = NULL;
	struct display_info disp;
	int args_per_step = 2;

	/* set defaults */
	FUNC2(&disp, '\0', sizeof(disp));
	disp.size = -1;
	disp.mode = MODE_SHOW_VALUE;
	for (;;) {
		int c = FUNC1(argc, argv, "d:hlpt:");
		if (c == -1)
			break;

		switch (c) {
		case 'h':
		case '?':
			FUNC3(NULL);

		case 't':
			if (FUNC4(optarg, &disp.type,
					&disp.size))
				FUNC3("Invalid type string");
			break;

		case 'p':
			disp.mode = MODE_LIST_PROPS;
			args_per_step = 1;
			break;

		case 'l':
			disp.mode = MODE_LIST_SUBNODES;
			args_per_step = 1;
			break;

		case 'd':
			disp.default_val = optarg;
			break;
		}
	}

	if (optind < argc)
		filename = argv[optind++];
	if (!filename)
		FUNC3("Missing filename");

	argv += optind;
	argc -= optind;

	/* Allow no arguments, and silently succeed */
	if (!argc)
		return 0;

	/* Check for node, property arguments */
	if (args_per_step == 2 && (argc % 2))
		FUNC3("Must have an even number of arguments");

	if (FUNC0(&disp, filename, argv, argc, args_per_step))
		return 1;
	return 0;
}