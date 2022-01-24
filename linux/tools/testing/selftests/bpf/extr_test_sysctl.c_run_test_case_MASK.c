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
typedef  int /*<<< orphan*/  sysctl_path ;
struct sysctl_test {int attach_type; char* descr; char* sysctl; scalar_t__ result; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 scalar_t__ ATTACH_REJECT ; 
 int /*<<< orphan*/  BPF_F_ALLOW_OVERRIDE ; 
 scalar_t__ EPERM ; 
 scalar_t__ LOAD_REJECT ; 
 scalar_t__ OP_EPERM ; 
 scalar_t__ SUCCESS ; 
 int FUNC0 (char*,struct sysctl_test*) ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int FUNC4 (struct sysctl_test*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC8(int cgfd, struct sysctl_test *test)
{
	enum bpf_attach_type atype = test->attach_type;
	char sysctl_path[128];
	int progfd = -1;
	int err = 0;

	FUNC6("Test case: %s .. ", test->descr);

	FUNC7(sysctl_path, sizeof(sysctl_path), "/proc/sys/%s",
		 test->sysctl);

	progfd = FUNC4(test, sysctl_path);
	if (progfd < 0) {
		if (test->result == LOAD_REJECT)
			goto out;
		else
			goto err;
	}

	if (FUNC1(progfd, cgfd, atype, BPF_F_ALLOW_OVERRIDE) == -1) {
		if (test->result == ATTACH_REJECT)
			goto out;
		else
			goto err;
	}

	errno = 0;
	if (FUNC0(sysctl_path, test) == -1) {
		if (test->result == OP_EPERM && errno == EPERM)
			goto out;
		else
			goto err;
	}

	if (test->result != SUCCESS) {
		FUNC5("Unexpected success");
		goto err;
	}

	goto out;
err:
	err = -1;
out:
	/* Detaching w/o checking return code: best effort attempt. */
	if (progfd != -1)
		FUNC2(cgfd, atype);
	FUNC3(progfd);
	FUNC6("[%s]\n", err ? "FAIL" : "PASS");
	return err;
}