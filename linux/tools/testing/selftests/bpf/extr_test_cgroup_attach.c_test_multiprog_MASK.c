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
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_F_ALLOW_MULTI ; 
 int /*<<< orphan*/  BPF_F_ALLOW_OVERRIDE ; 
 int /*<<< orphan*/  BPF_F_QUERY_EFFECTIVE ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  PING_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,unsigned long long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,unsigned long long*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  map_fd ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int,int) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void)
{
	__u32 prog_ids[4], prog_cnt = 0, attach_flags, saved_prog_id;
	int cg1 = 0, cg2 = 0, cg3 = 0, cg4 = 0, cg5 = 0, key = 0;
	int drop_prog, allow_prog[6] = {}, rc = 0;
	unsigned long long value;
	int i = 0;

	for (i = 0; i < 6; i++) {
		allow_prog[i] = FUNC12(1, 1 << i);
		if (!allow_prog[i])
			goto err;
	}
	drop_prog = FUNC12(0, 1);
	if (!drop_prog)
		goto err;

	if (FUNC13())
		goto err;

	cg1 = FUNC8("/cg1");
	if (cg1 < 0)
		goto err;
	cg2 = FUNC8("/cg1/cg2");
	if (cg2 < 0)
		goto err;
	cg3 = FUNC8("/cg1/cg2/cg3");
	if (cg3 < 0)
		goto err;
	cg4 = FUNC8("/cg1/cg2/cg3/cg4");
	if (cg4 < 0)
		goto err;
	cg5 = FUNC8("/cg1/cg2/cg3/cg4/cg5");
	if (cg5 < 0)
		goto err;

	if (FUNC9("/cg1/cg2/cg3/cg4/cg5"))
		goto err;

	if (FUNC3(allow_prog[0], cg1, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_MULTI)) {
		FUNC10("Attaching prog to cg1");
		goto err;
	}
	if (!FUNC3(allow_prog[0], cg1, BPF_CGROUP_INET_EGRESS,
			     BPF_F_ALLOW_MULTI)) {
		FUNC10("Unexpected success attaching the same prog to cg1");
		goto err;
	}
	if (FUNC3(allow_prog[1], cg1, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_MULTI)) {
		FUNC10("Attaching prog2 to cg1");
		goto err;
	}
	if (FUNC3(allow_prog[2], cg2, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC10("Attaching prog to cg2");
		goto err;
	}
	if (FUNC3(allow_prog[3], cg3, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_MULTI)) {
		FUNC10("Attaching prog to cg3");
		goto err;
	}
	if (FUNC3(allow_prog[4], cg4, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC10("Attaching prog to cg4");
		goto err;
	}
	if (FUNC3(allow_prog[5], cg5, BPF_CGROUP_INET_EGRESS, 0)) {
		FUNC10("Attaching prog to cg5");
		goto err;
	}
	FUNC0(FUNC14(PING_CMD) == 0);
	FUNC0(FUNC1(map_fd, &key, &value) == 0);
	FUNC0(value == 1 + 2 + 8 + 32);

	/* query the number of effective progs in cg5 */
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
			      NULL, NULL, &prog_cnt) == 0);
	FUNC0(prog_cnt == 4);
	/* retrieve prog_ids of effective progs in cg5 */
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
			      &attach_flags, prog_ids, &prog_cnt) == 0);
	FUNC0(prog_cnt == 4);
	FUNC0(attach_flags == 0);
	saved_prog_id = prog_ids[0];
	/* check enospc handling */
	prog_ids[0] = 0;
	prog_cnt = 2;
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
			      &attach_flags, prog_ids, &prog_cnt) == -1 &&
	       errno == ENOSPC);
	FUNC0(prog_cnt == 4);
	/* check that prog_ids are returned even when buffer is too small */
	FUNC0(prog_ids[0] == saved_prog_id);
	/* retrieve prog_id of single attached prog in cg5 */
	prog_ids[0] = 0;
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, 0,
			      NULL, prog_ids, &prog_cnt) == 0);
	FUNC0(prog_cnt == 1);
	FUNC0(prog_ids[0] == saved_prog_id);

	/* detach bottom program and ping again */
	if (FUNC4(-1, cg5, BPF_CGROUP_INET_EGRESS)) {
		FUNC10("Detaching prog from cg5");
		goto err;
	}
	value = 0;
	FUNC0(FUNC2(map_fd, &key, &value, 0) == 0);
	FUNC0(FUNC14(PING_CMD) == 0);
	FUNC0(FUNC1(map_fd, &key, &value) == 0);
	FUNC0(value == 1 + 2 + 8 + 16);

	/* detach 3rd from bottom program and ping again */
	errno = 0;
	if (!FUNC4(0, cg3, BPF_CGROUP_INET_EGRESS)) {
		FUNC10("Unexpected success on detach from cg3");
		goto err;
	}
	if (FUNC4(allow_prog[3], cg3, BPF_CGROUP_INET_EGRESS)) {
		FUNC10("Detaching from cg3");
		goto err;
	}
	value = 0;
	FUNC0(FUNC2(map_fd, &key, &value, 0) == 0);
	FUNC0(FUNC14(PING_CMD) == 0);
	FUNC0(FUNC1(map_fd, &key, &value) == 0);
	FUNC0(value == 1 + 2 + 16);

	/* detach 2nd from bottom program and ping again */
	if (FUNC4(-1, cg4, BPF_CGROUP_INET_EGRESS)) {
		FUNC10("Detaching prog from cg4");
		goto err;
	}
	value = 0;
	FUNC0(FUNC2(map_fd, &key, &value, 0) == 0);
	FUNC0(FUNC14(PING_CMD) == 0);
	FUNC0(FUNC1(map_fd, &key, &value) == 0);
	FUNC0(value == 1 + 2 + 4);

	prog_cnt = 4;
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, BPF_F_QUERY_EFFECTIVE,
			      &attach_flags, prog_ids, &prog_cnt) == 0);
	FUNC0(prog_cnt == 3);
	FUNC0(attach_flags == 0);
	FUNC0(FUNC5(cg5, BPF_CGROUP_INET_EGRESS, 0,
			      NULL, prog_ids, &prog_cnt) == 0);
	FUNC0(prog_cnt == 0);
	goto out;
err:
	rc = 1;

out:
	for (i = 0; i < 6; i++)
		if (allow_prog[i] > 0)
			FUNC7(allow_prog[i]);
	FUNC7(cg1);
	FUNC7(cg2);
	FUNC7(cg3);
	FUNC7(cg4);
	FUNC7(cg5);
	FUNC6();
	if (!rc)
		FUNC11("#multi:PASS\n");
	else
		FUNC11("#multi:FAIL\n");
	return rc;
}