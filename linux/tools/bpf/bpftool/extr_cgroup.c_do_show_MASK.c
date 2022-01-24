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
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int BPF_F_QUERY_EFFECTIVE ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int __MAX_BPF_ATTACH_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,char*) ; 
 int query_flags ; 
 scalar_t__ FUNC10 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
	enum bpf_attach_type type;
	const char *path;
	int cgroup_fd;
	int ret = -1;

	query_flags = 0;

	if (!FUNC2(1))
		return -1;
	path = FUNC0();

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

	cgroup_fd = FUNC7(path, O_RDONLY);
	if (cgroup_fd < 0) {
		FUNC8("can't open cgroup %s", path);
		goto exit;
	}

	if (json_output)
		FUNC6(json_wtr);
	else
		FUNC9("%-8s %-15s %-15s %-15s\n", "ID", "AttachType",
		       "AttachFlags", "Name");

	for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++) {
		/*
		 * Not all attach types may be supported, so it's expected,
		 * that some requests will fail.
		 * If we were able to get the show for at least one
		 * attach type, let's return 0.
		 */
		if (FUNC10(cgroup_fd, type, 0) == 0)
			ret = 0;
	}

	if (json_output)
		FUNC5(json_wtr);

	FUNC3(cgroup_fd);
exit:
	return ret;
}