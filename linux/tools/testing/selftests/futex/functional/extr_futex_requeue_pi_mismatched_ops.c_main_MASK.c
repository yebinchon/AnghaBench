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
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int RET_ERROR ; 
 int RET_FAIL ; 
 int RET_PASS ; 
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  blocking_child ; 
 int child_ret ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  f1 ; 
 int /*<<< orphan*/  f2 ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(int argc, char *argv[])
{
	int ret = RET_PASS;
	pthread_t child;
	int c;

	while ((c = FUNC7(argc, argv, "chv:")) != -1) {
		switch (c) {
		case 'c':
			FUNC11(1);
			break;
		case 'h':
			FUNC17(FUNC1(argv[0]));
			FUNC3(0);
		case 'v':
			FUNC12(FUNC0(optarg));
			break;
		default:
			FUNC17(FUNC1(argv[0]));
			FUNC3(1);
		}
	}

	FUNC8();
	FUNC10(1);
	FUNC9("%s: Detect mismatched requeue_pi operations\n",
	       FUNC1(argv[0]));

	if (FUNC14(&child, NULL, blocking_child, NULL)) {
		FUNC2("pthread_create\n", errno);
		ret = RET_ERROR;
		goto out;
	}
	/* Allow the child to block in the kernel. */
	FUNC16(1);

	/*
	 * The kernel should detect the waiter did not setup the
	 * q->requeue_pi_key and return -EINVAL. If it does not,
	 * it likely gave the lock to the child, which is now hung
	 * in the kernel.
	 */
	ret = FUNC5(&f1, f1, &f2, 1, 0, FUTEX_PRIVATE_FLAG);
	if (ret < 0) {
		if (errno == EINVAL) {
			/*
			 * The kernel correctly detected the mismatched
			 * requeue_pi target and aborted. Wake the child with
			 * FUTEX_WAKE.
			 */
			ret = FUNC6(&f1, 1, FUTEX_PRIVATE_FLAG);
			if (ret == 1) {
				ret = RET_PASS;
			} else if (ret < 0) {
				FUNC2("futex_wake\n", errno);
				ret = RET_ERROR;
			} else {
				FUNC2("futex_wake did not wake the child\n", 0);
				ret = RET_ERROR;
			}
		} else {
			FUNC2("futex_cmp_requeue_pi\n", errno);
			ret = RET_ERROR;
		}
	} else if (ret > 0) {
		FUNC4("futex_cmp_requeue_pi failed to detect the mismatch\n");
		ret = RET_FAIL;
	} else {
		FUNC2("futex_cmp_requeue_pi found no waiters\n", 0);
		ret = RET_ERROR;
	}

	FUNC15(child, NULL);

	if (!ret)
		ret = child_ret;

 out:
	/* If the kernel crashes, we shouldn't return at all. */
	FUNC13(TEST_NAME, ret);
	return ret;
}