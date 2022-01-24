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
struct option {char* member_0; int member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int debugFlag ; 
 double dur ; 
 int edt_flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char) ; 
 int FUNC3 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 int loopback_flag ; 
 double minRate ; 
 int no_cn_flag ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 char optopt ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 double rate ; 
 int FUNC5 (char*,int) ; 
 int stats_flag ; 
 int /*<<< orphan*/  stderr ; 
 int work_conserving_flag ; 

int FUNC6(int argc, char **argv)
{
	char *prog = "hbm_out_kern.o";
	int  k;
	int cg_id = 1;
	char *optstring = "iodln:r:st:wh";
	struct option loptions[] = {
		{"no_cn", 0, NULL, 1},
		{"edt", 0, NULL, 2},
		{NULL, 0, NULL, 0}
	};

	while ((k = FUNC3(argc, argv, optstring, loptions, NULL)) != -1) {
		switch (k) {
		case 1:
			no_cn_flag = true;
			break;
		case 2:
			prog = "hbm_edt_kern.o";
			edt_flag = true;
			break;
		case'o':
			break;
		case 'd':
			debugFlag = true;
			break;
		case 'l':
			loopback_flag = true;
			break;
		case 'n':
			cg_id = FUNC1(optarg);
			break;
		case 'r':
			minRate = FUNC1(optarg) * 1.024;
			rate = minRate;
			break;
		case 's':
			stats_flag = true;
			break;
		case 't':
			dur = FUNC1(optarg);
			break;
		case 'w':
			work_conserving_flag = true;
			break;
		case '?':
			if (optopt == 'n' || optopt == 'r' || optopt == 't')
				FUNC2(stderr,
					"Option -%c requires an argument.\n\n",
					optopt);
		case 'h':
			// fallthrough
		default:
			FUNC0();
			return 0;
		}
	}

	if (optind < argc)
		prog = argv[optind];
	FUNC4("HBM prog: %s\n", prog != NULL ? prog : "NULL");

	return FUNC5(prog, cg_id);
}