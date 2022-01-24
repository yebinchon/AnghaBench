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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int RET_ERROR ; 
 int RET_FAIL ; 
 int RET_PASS ; 
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  WAKE_WAIT_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  thr_futex_wait ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int val ; 

int FUNC18(int argc, char **argv)
{
	pthread_t thr;
	int ret = RET_PASS;
	int res;
	int c;

	while ((c = FUNC6(argc, argv, "chv:")) != -1) {
		switch (c) {
		case 'c':
			FUNC11(1);
			break;
		case 'h':
			FUNC16(FUNC1(argv[0]));
			FUNC2(0);
		case 'v':
			FUNC12(FUNC0(optarg));
			break;
		default:
			FUNC16(FUNC1(argv[0]));
			FUNC2(1);
		}
	}

	FUNC8();
	FUNC10(1);
	FUNC9(
		"%s: Test the futex value of private file mappings in FUTEX_WAIT\n",
		FUNC1(argv[0]));

	ret = FUNC14(&thr, NULL, thr_futex_wait, NULL);
	if (ret < 0) {
		FUNC4(stderr, "pthread_create error\n");
		ret = RET_ERROR;
		goto out;
	}

	FUNC7("wait a while\n");
	FUNC17(WAKE_WAIT_US);
	val = 2;
	res = FUNC5(&val, 1, 0);
	FUNC7("futex_wake %d\n", res);
	if (res != 1) {
		FUNC3("FUTEX_WAKE didn't find the waiting thread.\n");
		ret = RET_FAIL;
	}

	FUNC7("join\n");
	FUNC15(thr, NULL);

 out:
	FUNC13(TEST_NAME, ret);
	return ret;
}