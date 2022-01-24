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
 int EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_chosen ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int FUNC12 (unsigned int,unsigned int) ; 
 int FUNC13 (unsigned int,unsigned int) ; 
 int FUNC14 (unsigned int,unsigned int) ; 
 int FUNC15 (unsigned int,unsigned int) ; 
 int FUNC16 (unsigned int,unsigned int) ; 
 int FUNC17 (unsigned int) ; 
 int FUNC18 (unsigned int) ; 
 int FUNC19 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  info_opts ; 
 int no_rounding ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC22 (unsigned int) ; 

int FUNC23(int argc, char **argv)
{
	extern char *optarg;
	extern int optind, opterr, optopt;
	int ret = 0, cont = 1;
	unsigned int cpu = 0;
	unsigned int human = 0;
	int output_param = 0;

	do {
		ret = FUNC19(argc, argv, "oefwldpgrasmybn", info_opts,
				  NULL);
		switch (ret) {
		case '?':
			output_param = '?';
			cont = 0;
			break;
		case -1:
			cont = 0;
			break;
		case 'b':
		case 'o':
		case 'a':
		case 'r':
		case 'g':
		case 'p':
		case 'd':
		case 'l':
		case 'w':
		case 'f':
		case 'e':
		case 's':
		case 'y':
			if (output_param) {
				output_param = -1;
				cont = 0;
				break;
			}
			output_param = ret;
			break;
		case 'm':
			if (human) {
				output_param = -1;
				cont = 0;
				break;
			}
			human = 1;
			break;
		case 'n':
			no_rounding = 1;
			break;
		default:
			FUNC7(stderr, "invalid or unknown argument\n");
			return EXIT_FAILURE;
		}
	} while (cont);

	switch (output_param) {
	case 'o':
		if (!FUNC2(cpus_chosen)) {
			FUNC20(FUNC0("The argument passed to this tool can't be "
				 "combined with passing a --cpu argument\n"));
			return -EINVAL;
		}
		break;
	case 0:
		output_param = 'e';
	}

	ret = 0;

	/* Default is: show output of CPU 0 only */
	if (FUNC2(cpus_chosen))
		FUNC5(cpus_chosen, 0);

	switch (output_param) {
	case -1:
		FUNC20(FUNC0("You can't specify more than one --cpu parameter and/or\n"
		       "more than one output-specific argument\n"));
		return -EINVAL;
	case '?':
		FUNC20(FUNC0("invalid or unknown argument\n"));
		return -EINVAL;
	case 'o':
		FUNC21();
		return EXIT_SUCCESS;
	}

	for (cpu = FUNC1(cpus_chosen);
	     cpu <= FUNC4(cpus_chosen); cpu++) {

		if (!FUNC3(cpus_chosen, cpu))
			continue;

		FUNC20(FUNC0("analyzing CPU %d:\n"), cpu);

		if (FUNC22(cpu) != 1) {
			FUNC20(FUNC0(" *is offline\n"));
			FUNC20("\n");
			continue;
		}

		switch (output_param) {
		case 'b':
			FUNC10(cpu);
			break;
		case 'e':
			FUNC6(cpu);
			break;
		case 'a':
			ret = FUNC8(cpu);
			break;
		case 'r':
			ret = FUNC18(cpu);
			break;
		case 'g':
			ret = FUNC9(cpu);
			break;
		case 'p':
			ret = FUNC17(cpu);
			break;
		case 'd':
			ret = FUNC11(cpu);
			break;
		case 'l':
			ret = FUNC15(cpu, human);
			break;
		case 'w':
			ret = FUNC12(cpu, human);
			break;
		case 'f':
			ret = FUNC13(cpu, human);
			break;
		case 's':
			ret = FUNC14(cpu, human);
			break;
		case 'y':
			ret = FUNC16(cpu, human);
			break;
		}
		if (ret)
			return ret;
	}
	return ret;
}