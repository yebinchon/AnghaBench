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
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int RET_ERROR ; 
 int RET_FAIL ; 
 int RET_PASS ; 
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  WAIT_US ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* buf ; 
 scalar_t__ child_blocked ; 
 int child_ret ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *,long,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait_thread ; 

int FUNC18(int argc, char **argv)
{
	int c, ret = RET_PASS;
	long page_size;
	pthread_t thr;

	while ((c = FUNC5(argc, argv, "chv:")) != -1) {
		switch (c) {
		case 'c':
			FUNC10(1);
			break;
		case 'h':
			FUNC16(FUNC1(argv[0]));
			FUNC3(0);
		case 'v':
			FUNC11(FUNC0(optarg));
			break;
		default:
			FUNC16(FUNC1(argv[0]));
			FUNC3(1);
		}
	}

	page_size = FUNC15(_SC_PAGESIZE);

	buf = FUNC12(NULL, page_size, PROT_READ|PROT_WRITE,
		   MAP_PRIVATE|MAP_ANONYMOUS, 0, 0);
	if (buf == (void *)-1) {
		FUNC2("mmap\n", errno);
		FUNC3(1);
	}

	FUNC7();
	FUNC9(1);
	FUNC8("%s: Test the uninitialized futex value in FUTEX_WAIT\n",
	       FUNC1(argv[0]));


	ret = FUNC14(&thr, NULL, wait_thread, NULL);
	if (ret) {
		FUNC2("pthread_create\n", errno);
		ret = RET_ERROR;
		goto out;
	}

	FUNC6("waiting %dus for child to return\n", WAIT_US);
	FUNC17(WAIT_US);

	ret = child_ret;
	if (child_blocked) {
		FUNC4("child blocked in kernel\n");
		ret = RET_FAIL;
	}

 out:
	FUNC13(TEST_NAME, ret);
	return ret;
}