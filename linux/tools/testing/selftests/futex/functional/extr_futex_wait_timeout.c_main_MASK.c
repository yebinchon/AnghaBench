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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  futex_t ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUTEX_INITIALIZER ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int RET_FAIL ; 
 int RET_PASS ; 
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  timeout_ns ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(int argc, char *argv[])
{
	futex_t f1 = FUTEX_INITIALIZER;
	struct timespec to;
	int res, ret = RET_PASS;
	int c;

	while ((c = FUNC5(argc, argv, "cht:v:")) != -1) {
		switch (c) {
		case 'c':
			FUNC10(1);
			break;
		case 'h':
			FUNC13(FUNC1(argv[0]));
			FUNC2(0);
		case 't':
			timeout_ns = FUNC0(optarg);
			break;
		case 'v':
			FUNC11(FUNC0(optarg));
			break;
		default:
			FUNC13(FUNC1(argv[0]));
			FUNC2(1);
		}
	}

	FUNC7();
	FUNC9(1);
	FUNC8("%s: Block on a futex and wait for timeout\n",
	       FUNC1(argv[0]));
	FUNC8("\tArguments: timeout=%ldns\n", timeout_ns);

	/* initialize timeout */
	to.tv_sec = 0;
	to.tv_nsec = timeout_ns;

	FUNC6("Calling futex_wait on f1: %u @ %p\n", f1, &f1);
	res = FUNC4(&f1, f1, &to, FUTEX_PRIVATE_FLAG);
	if (!res || errno != ETIMEDOUT) {
		FUNC3("futex_wait returned %d\n", ret < 0 ? errno : ret);
		ret = RET_FAIL;
	}

	FUNC12(TEST_NAME, ret);
	return ret;
}