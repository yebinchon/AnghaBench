#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;
struct TYPE_2__ {int hwp_use_pkg; int /*<<< orphan*/  hwp_window; int /*<<< orphan*/  hwp_epp; int /*<<< orphan*/  hwp_max; int /*<<< orphan*/  hwp_min; int /*<<< orphan*/  hwp_desired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  new_epb ; 
#define  no_argument 129 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* progname ; 
 TYPE_1__ req_update ; 
#define  required_argument 128 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  turbo_update_value ; 
 int update_hwp_enable ; 
 int /*<<< orphan*/  update_hwp_use_pkg ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  verbose ; 

void FUNC17(int argc, char **argv)
{
	int opt;
	int option_index = 0;

	static struct option long_options[] = {
		{"all",		required_argument,	0, 'a'},
		{"cpu",		required_argument,	0, 'c'},
		{"pkg",		required_argument,	0, 'p'},
		{"debug",	no_argument,		0, 'd'},
		{"hwp-desired",	required_argument,	0, 'D'},
		{"epb",	required_argument,	0, 'B'},
		{"force",	no_argument,	0, 'f'},
		{"hwp-enable",	no_argument,	0, 'e'},
		{"help",	no_argument,	0, 'h'},
		{"hwp-epp",	required_argument,	0, 'P'},
		{"hwp-min",	required_argument,	0, 'm'},
		{"hwp-max",	required_argument,	0, 'M'},
		{"read",	no_argument,		0, 'r'},
		{"turbo-enable",	required_argument,	0, 't'},
		{"hwp-use-pkg",	required_argument,	0, 'u'},
		{"version",	no_argument,		0, 'v'},
		{"hwp-window",	required_argument,	0, 'w'},
		{0,		0,			0, 0 }
	};

	progname = argv[0];

	while ((opt = FUNC3(argc, argv, "+a:c:dD:E:e:f:m:M:rt:u:vw:",
				long_options, &option_index)) != -1) {
		switch (opt) {
		case 'a':
			FUNC4(optarg);
			break;
		case 'B':
			new_epb = FUNC6(FUNC14(optarg));
			break;
		case 'c':
			FUNC5(optarg);
			break;
		case 'e':
			update_hwp_enable = 1;
			break;
		case 'h':
			FUNC16();
			break;
		case 'd':
			debug++;
			verbose++;
			break;
		case 'f':
			force++;
			break;
		case 'D':
			req_update.hwp_desired = FUNC7(FUNC14(optarg));
			break;
		case 'm':
			req_update.hwp_min = FUNC10(FUNC14(optarg));
			break;
		case 'M':
			req_update.hwp_max = FUNC9(FUNC14(optarg));
			break;
		case 'p':
			FUNC12(optarg);
			break;
		case 'P':
			req_update.hwp_epp = FUNC8(FUNC14(optarg));
			break;
		case 'r':
			/* v1 used -r to specify read-only mode, now the default */
			break;
		case 't':
			turbo_update_value = FUNC13(FUNC14(optarg));
			break;
		case 'u':
			update_hwp_use_pkg++;
			if (FUNC0(optarg) == 0)
				req_update.hwp_use_pkg = 0;
			else
				req_update.hwp_use_pkg = 1;
			break;
		case 'v':
			FUNC15();
			FUNC1(0);
			break;
		case 'w':
			req_update.hwp_window = FUNC11(FUNC14(optarg));
			break;
		default:
			FUNC16();
		}
	}
	/*
	 * v1 allowed "performance"|"normal"|"power" with no policy specifier
	 * to update BIAS.  Continue to support that, even though no longer documented.
	 */
	if (argc == optind + 1)
		new_epb = FUNC6(FUNC14(argv[optind]));

	if (argc > optind + 1) {
		FUNC2(stderr, "stray parameter '%s'\n", argv[optind + 1]);
		FUNC16();
	}
}