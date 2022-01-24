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
 int /*<<< orphan*/  CG_PATH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(int argc, char **argv)
{
	int cgfd = -1;
	int err = 0;

	if (argc < 2) {
		FUNC4(stderr,
			"%s has to be run via %s.sh. Skip direct run.\n",
			argv[0], argv[0]);
		FUNC3(err);
	}

	if (FUNC7())
		goto err;

	cgfd = FUNC2(CG_PATH);
	if (cgfd < 0)
		goto err;

	if (FUNC5(CG_PATH))
		goto err;

	if (FUNC6(cgfd))
		goto err;

	goto out;
err:
	err = -1;
out:
	FUNC1(cgfd);
	FUNC0();
	return err;
}