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
 int /*<<< orphan*/  CGROUP_PATH ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char **argv)
{
	int cgfd = -1;
	int err = 0;

	if (argc < 3) {
		FUNC6(stderr, "Usage: %s iface prog_id\n", argv[0]);
		FUNC5(EXIT_FAILURE);
	}

	if (FUNC10())
		goto err;

	cgfd = FUNC4(CGROUP_PATH);
	if (cgfd < 0)
		goto err;

	if (FUNC7(CGROUP_PATH))
		goto err;

	if (FUNC9(argv[1]))
		goto err;

	if (FUNC1(FUNC0(argv[2])))
		goto err;

	goto out;
err:
	err = -1;
out:
	FUNC3(cgfd);
	FUNC2();
	FUNC8("[%s]\n", err ? "FAIL" : "PASS");
	return err;
}