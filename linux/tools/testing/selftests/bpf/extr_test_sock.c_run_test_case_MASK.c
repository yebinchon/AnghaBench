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
struct sock_test {char* descr; scalar_t__ result; int /*<<< orphan*/  attach_type; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; int /*<<< orphan*/  expected_attach_type; int /*<<< orphan*/  insns; } ;

/* Variables and functions */
 scalar_t__ ATTACH_REJECT ; 
 scalar_t__ BIND_REJECT ; 
 scalar_t__ EPERM ; 
 scalar_t__ LOAD_REJECT ; 
 scalar_t__ SUCCESS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(int cgfd, const struct sock_test *test)
{
	int progfd = -1;
	int err = 0;

	FUNC5("Test case: %s .. ", test->descr);
	progfd = FUNC4(test->insns, test->expected_attach_type);
	if (progfd < 0) {
		if (test->result == LOAD_REJECT)
			goto out;
		else
			goto err;
	}

	if (FUNC0(cgfd, progfd, test->attach_type) == -1) {
		if (test->result == ATTACH_REJECT)
			goto out;
		else
			goto err;
	}

	if (FUNC1(test->domain, test->type, test->ip, test->port) == -1) {
		/* sys_bind() may fail for different reasons, errno has to be
		 * checked to confirm that BPF program rejected it.
		 */
		if (test->result == BIND_REJECT && errno == EPERM)
			goto out;
		else
			goto err;
	}


	if (test->result != SUCCESS)
		goto err;

	goto out;
err:
	err = -1;
out:
	/* Detaching w/o checking return code: best effort attempt. */
	if (progfd != -1)
		FUNC2(cgfd, test->attach_type);
	FUNC3(progfd);
	FUNC5("[%s]\n", err ? "FAIL" : "PASS");
	return err;
}