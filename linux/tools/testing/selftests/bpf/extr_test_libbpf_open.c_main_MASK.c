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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int EXIT_FAIL_OPTION ; 
 int debug ; 
 int FUNC0 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  libbpf_debug_print ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  long_options ; 
 int optind ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 

int FUNC6(int argc, char **argv)
{
	char filename[1024] = { 0 };
	bool verbose = 1;
	int longindex = 0;
	int opt;

	FUNC1(libbpf_debug_print);

	/* Parse commands line args */
	while ((opt = FUNC0(argc, argv, "hDq",
				  long_options, &longindex)) != -1) {
		switch (opt) {
		case 'D':
			debug = 1;
			break;
		case 'q': /* Use in scripting mode */
			verbose = 0;
			break;
		case 'h':
		default:
			FUNC5(argv);
			return EXIT_FAIL_OPTION;
		}
	}
	if (optind >= argc) {
		FUNC5(argv);
		FUNC2("ERROR: Expected BPF_FILE argument after options\n");
		return EXIT_FAIL_OPTION;
	}
	FUNC3(filename, sizeof(filename), "%s", argv[optind]);

	return FUNC4(filename, verbose);
}