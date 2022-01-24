#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  root ;
struct TYPE_3__ {int (* fn ) (char*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
#define  KSFT_PASS 129 
#define  KSFT_SKIP 128 
 int PATH_MAX ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 TYPE_1__* tests ; 

int FUNC9(int argc, char *argv[])
{
	char root[PATH_MAX];
	int i, ret = EXIT_SUCCESS;

	if (FUNC1(root, sizeof(root)))
		FUNC4("cgroup v2 isn't mounted\n");

	if (FUNC2(root, "cgroup.subtree_control", "memory"))
		if (FUNC3(root, "cgroup.subtree_control", "+memory"))
			FUNC4("Failed to set memory controller\n");

	for (i = 0; i < FUNC0(tests); i++) {
		switch (tests[i].fn(root)) {
		case KSFT_PASS:
			FUNC6("%s\n", tests[i].name);
			break;
		case KSFT_SKIP:
			FUNC7("%s\n", tests[i].name);
			break;
		default:
			ret = EXIT_FAILURE;
			FUNC5("%s\n", tests[i].name);
			break;
		}
	}

	return ret;
}