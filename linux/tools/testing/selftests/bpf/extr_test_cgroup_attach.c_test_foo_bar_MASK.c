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

/* Variables and functions */
 int /*<<< orphan*/  BAR ; 
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_F_ALLOW_OVERRIDE ; 
 int /*<<< orphan*/  FOO ; 
 int /*<<< orphan*/  PING_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void)
{
	int drop_prog, allow_prog, foo = 0, bar = 0, rc = 0;

	allow_prog = FUNC10(1);
	if (!allow_prog)
		goto err;

	drop_prog = FUNC10(0);
	if (!drop_prog)
		goto err;

	if (FUNC11())
		goto err;

	/* Create cgroup /foo, get fd, and join it */
	foo = FUNC5(FOO);
	if (foo < 0)
		goto err;

	if (FUNC7(FOO))
		goto err;

	if (FUNC1(drop_prog, foo, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC8("Attaching prog to /foo");
		goto err;
	}

	FUNC6("Attached DROP prog. This ping in cgroup /foo should fail...\n");
	FUNC0(FUNC12(PING_CMD) != 0);

	/* Create cgroup /foo/bar, get fd, and join it */
	bar = FUNC5(BAR);
	if (bar < 0)
		goto err;

	if (FUNC7(BAR))
		goto err;

	FUNC6("Attached DROP prog. This ping in cgroup /foo/bar should fail...\n");
	FUNC0(FUNC12(PING_CMD) != 0);

	if (FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC8("Attaching prog to /foo/bar");
		goto err;
	}

	FUNC6("Attached PASS prog. This ping in cgroup /foo/bar should pass...\n");
	FUNC0(FUNC12(PING_CMD) == 0);

	if (FUNC2(bar, BPF_CGROUP_INET_EGRESS)) {
		FUNC8("Detaching program from /foo/bar");
		goto err;
	}

	FUNC6("Detached PASS from /foo/bar while DROP is attached to /foo.\n"
	       "This ping in cgroup /foo/bar should fail...\n");
	FUNC0(FUNC12(PING_CMD) != 0);

	if (FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC8("Attaching prog to /foo/bar");
		goto err;
	}

	if (FUNC2(foo, BPF_CGROUP_INET_EGRESS)) {
		FUNC8("Detaching program from /foo");
		goto err;
	}

	FUNC6("Attached PASS from /foo/bar and detached DROP from /foo.\n"
	       "This ping in cgroup /foo/bar should pass...\n");
	FUNC0(FUNC12(PING_CMD) == 0);

	if (FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
			    BPF_F_ALLOW_OVERRIDE)) {
		FUNC8("Attaching prog to /foo/bar");
		goto err;
	}

	if (!FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS, 0)) {
		errno = 0;
		FUNC8("Unexpected success attaching prog to /foo/bar");
		goto err;
	}

	if (FUNC2(bar, BPF_CGROUP_INET_EGRESS)) {
		FUNC8("Detaching program from /foo/bar");
		goto err;
	}

	if (!FUNC2(foo, BPF_CGROUP_INET_EGRESS)) {
		errno = 0;
		FUNC8("Unexpected success in double detach from /foo");
		goto err;
	}

	if (FUNC1(allow_prog, foo, BPF_CGROUP_INET_EGRESS, 0)) {
		FUNC8("Attaching non-overridable prog to /foo");
		goto err;
	}

	if (!FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS, 0)) {
		errno = 0;
		FUNC8("Unexpected success attaching non-overridable prog to /foo/bar");
		goto err;
	}

	if (!FUNC1(allow_prog, bar, BPF_CGROUP_INET_EGRESS,
			     BPF_F_ALLOW_OVERRIDE)) {
		errno = 0;
		FUNC8("Unexpected success attaching overridable prog to /foo/bar");
		goto err;
	}

	if (!FUNC1(allow_prog, foo, BPF_CGROUP_INET_EGRESS,
			     BPF_F_ALLOW_OVERRIDE)) {
		errno = 0;
		FUNC8("Unexpected success attaching overridable prog to /foo");
		goto err;
	}

	if (FUNC1(drop_prog, foo, BPF_CGROUP_INET_EGRESS, 0)) {
		FUNC8("Attaching different non-overridable prog to /foo");
		goto err;
	}

	goto out;

err:
	rc = 1;

out:
	FUNC4(foo);
	FUNC4(bar);
	FUNC3();
	if (!rc)
		FUNC9("#override:PASS\n");
	else
		FUNC9("#override:FAIL\n");
	return rc;
}