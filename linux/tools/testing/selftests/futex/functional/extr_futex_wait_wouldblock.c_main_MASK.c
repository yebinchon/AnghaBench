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
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  scalar_t__ futex_t ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ FUTEX_INITIALIZER ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int RET_FAIL ; 
 int RET_PASS ; 
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*) ; 
 int FUNC4 (scalar_t__*,scalar_t__,struct timespec*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 char* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  timeout_ns ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(int argc, char *argv[])
{
	struct timespec to = {.tv_sec = 0, .tv_nsec = timeout_ns};
	futex_t f1 = FUTEX_INITIALIZER;
	int res, ret = RET_PASS;
	int c;

	while ((c = FUNC5(argc, argv, "cht:v:")) != -1) {
		switch (c) {
		case 'c':
			FUNC10(1);
			break;
		case 'h':
			FUNC14(FUNC1(argv[0]));
			FUNC2(0);
		case 'v':
			FUNC11(FUNC0(optarg));
			break;
		default:
			FUNC14(FUNC1(argv[0]));
			FUNC2(1);
		}
	}

	FUNC7();
	FUNC9(1);
	FUNC8("%s: Test the unexpected futex value in FUTEX_WAIT\n",
	       FUNC1(argv[0]));

	FUNC6("Calling futex_wait on f1: %u @ %p with val=%u\n", f1, &f1, f1+1);
	res = FUNC4(&f1, f1+1, &to, FUTEX_PRIVATE_FLAG);
	if (!res || errno != EWOULDBLOCK) {
		FUNC3("futex_wait returned: %d %s\n",
		     res ? errno : res, res ? FUNC13(errno) : "");
		ret = RET_FAIL;
	}

	FUNC12(TEST_NAME, ret);
	return ret;
}