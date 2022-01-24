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
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_F_ALLOW_MULTI ; 
 int /*<<< orphan*/  PING_CMD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,int) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(void)
{
	__u32 prog_cnt = 4, attach_flags;
	int allow_prog[2] = {0};
	__u32 prog_ids[2] = {0};
	int cg = 0, i, rc = -1;
	void *ptr = NULL;
	int attempts;

	for (i = 0; i < FUNC0(allow_prog); i++) {
		allow_prog[i] = FUNC13(1, 1 << i);
		if (!allow_prog[i])
			goto err;
	}

	if (FUNC14())
		goto err;

	/* create a cgroup, attach two programs and remember their ids */
	cg = FUNC7("/cg_autodetach");
	if (cg < 0)
		goto err;

	if (FUNC9("/cg_autodetach"))
		goto err;

	for (i = 0; i < FUNC0(allow_prog); i++) {
		if (FUNC2(allow_prog[i], cg, BPF_CGROUP_INET_EGRESS,
				    BPF_F_ALLOW_MULTI)) {
			FUNC10("Attaching prog[%d] to cg:egress", i);
			goto err;
		}
	}

	/* make sure that programs are attached and run some traffic */
	FUNC1(FUNC4(cg, BPF_CGROUP_INET_EGRESS, 0, &attach_flags,
			      prog_ids, &prog_cnt) == 0);
	FUNC1(FUNC16(PING_CMD) == 0);

	/* allocate some memory (4Mb) to pin the original cgroup */
	ptr = FUNC11(4 * (1 << 20));
	if (!ptr)
		goto err;

	/* close programs and cgroup fd */
	for (i = 0; i < FUNC0(allow_prog); i++) {
		FUNC6(allow_prog[i]);
		allow_prog[i] = 0;
	}

	FUNC6(cg);
	cg = 0;

	/* leave the cgroup and remove it. don't detach programs */
	FUNC5();

	/* wait for the asynchronous auto-detachment.
	 * wait for no more than 5 sec and give up.
	 */
	for (i = 0; i < FUNC0(prog_ids); i++) {
		for (attempts = 5; attempts >= 0; attempts--) {
			int fd = FUNC3(prog_ids[i]);

			if (fd < 0)
				break;

			/* don't leave the fd open */
			FUNC6(fd);

			if (!attempts)
				goto err;

			FUNC15(1);
		}
	}

	rc = 0;
err:
	for (i = 0; i < FUNC0(allow_prog); i++)
		if (allow_prog[i] > 0)
			FUNC6(allow_prog[i]);
	if (cg)
		FUNC6(cg);
	FUNC8(ptr);
	FUNC5();
	if (!rc)
		FUNC12("#autodetach:PASS\n");
	else
		FUNC12("#autodetach:FAIL\n");
	return rc;
}