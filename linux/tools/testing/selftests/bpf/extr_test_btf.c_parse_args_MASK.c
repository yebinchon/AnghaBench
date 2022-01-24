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
struct TYPE_2__ {int always_log; int file_test_num; int file_test; int raw_test_num; int raw_test; int get_info_test_num; int get_info_test; int pprint_test; int info_raw_test_num; int info_raw_test; int dedup_test_num; int dedup_test; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ args ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dedup_tests ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_tests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  get_info_tests ; 
 int FUNC4 (int,char**,char const*) ; 
 int /*<<< orphan*/  info_raw_tests ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  raw_tests ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(int argc, char **argv)
{
	const char *optstr = "hlpk:f:r:g:d:";
	int opt;

	while ((opt = FUNC4(argc, argv, optstr)) != -1) {
		switch (opt) {
		case 'l':
			args.always_log = true;
			break;
		case 'f':
			args.file_test_num = FUNC1(optarg);
			args.file_test = true;
			break;
		case 'r':
			args.raw_test_num = FUNC1(optarg);
			args.raw_test = true;
			break;
		case 'g':
			args.get_info_test_num = FUNC1(optarg);
			args.get_info_test = true;
			break;
		case 'p':
			args.pprint_test = true;
			break;
		case 'k':
			args.info_raw_test_num = FUNC1(optarg);
			args.info_raw_test = true;
			break;
		case 'd':
			args.dedup_test_num = FUNC1(optarg);
			args.dedup_test = true;
			break;
		case 'h':
			FUNC5(argv[0]);
			FUNC2(0);
		default:
			FUNC5(argv[0]);
			return -1;
		}
	}

	if (args.raw_test_num &&
	    (args.raw_test_num < 1 ||
	     args.raw_test_num > FUNC0(raw_tests))) {
		FUNC3(stderr, "BTF raw test number must be [1 - %d]\n",
			FUNC0(raw_tests));
		return -1;
	}

	if (args.file_test_num &&
	    (args.file_test_num < 1 ||
	     args.file_test_num > FUNC0(file_tests))) {
		FUNC3(stderr, "BTF file test number must be [1 - %d]\n",
			FUNC0(file_tests));
		return -1;
	}

	if (args.get_info_test_num &&
	    (args.get_info_test_num < 1 ||
	     args.get_info_test_num > FUNC0(get_info_tests))) {
		FUNC3(stderr, "BTF get info test number must be [1 - %d]\n",
			FUNC0(get_info_tests));
		return -1;
	}

	if (args.info_raw_test_num &&
	    (args.info_raw_test_num < 1 ||
	     args.info_raw_test_num > FUNC0(info_raw_tests))) {
		FUNC3(stderr, "BTF prog info raw test number must be [1 - %d]\n",
			FUNC0(info_raw_tests));
		return -1;
	}

	if (args.dedup_test_num &&
	    (args.dedup_test_num < 1 ||
	     args.dedup_test_num > FUNC0(dedup_tests))) {
		FUNC3(stderr, "BTF dedup test number must be [1 - %d]\n",
			FUNC0(dedup_tests));
		return -1;
	}

	return 0;
}