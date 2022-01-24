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
 int BPF_F_QUERY_EFFECTIVE ; 
 int /*<<< orphan*/  FTW_MOUNT ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  NFTW_ERR 129 
#define  SHOW_TREE_FN_ERR 128 
 int /*<<< orphan*/  do_show_tree_fn ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,char*,char*) ; 
 int query_flags ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
	char *cgroup_root, *cgroup_alloced = NULL;
	int ret;

	query_flags = 0;

	if (!argc) {
		cgroup_alloced = FUNC2();
		if (!cgroup_alloced) {
			FUNC8("cgroup v2 isn't mounted");
			return -1;
		}
		cgroup_root = cgroup_alloced;
	} else {
		cgroup_root = FUNC0();

		while (argc) {
			if (FUNC4(*argv, "effective")) {
				if (query_flags & BPF_F_QUERY_EFFECTIVE) {
					FUNC8("duplicated argument: %s", *argv);
					return -1;
				}
				query_flags |= BPF_F_QUERY_EFFECTIVE;
				FUNC1();
			} else {
				FUNC8("expected no more arguments, 'effective', got: '%s'?",
				      *argv);
				return -1;
			}
		}
	}

	if (json_output)
		FUNC6(json_wtr);
	else
		FUNC9("%s\n"
		       "%-8s %-15s %-15s %-15s\n",
		       "CgroupPath",
		       "ID", "AttachType", "AttachFlags", "Name");

	switch (FUNC7(cgroup_root, do_show_tree_fn, 1024, FTW_MOUNT)) {
	case NFTW_ERR:
		FUNC8("can't iterate over %s: %s", cgroup_root,
		      FUNC10(errno));
		ret = -1;
		break;
	case SHOW_TREE_FN_ERR:
		ret = -1;
		break;
	default:
		ret = 0;
	}

	if (json_output)
		FUNC5(json_wtr);

	FUNC3(cgroup_alloced);

	return ret;
}