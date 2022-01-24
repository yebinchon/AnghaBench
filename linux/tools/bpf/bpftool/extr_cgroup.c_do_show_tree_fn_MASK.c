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
struct stat {int dummy; } ;
struct FTW {int /*<<< orphan*/  level; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int FTW_D ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int SHOW_TREE_FN_ERR ; 
 int __MAX_BPF_ATTACH_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(const char *fpath, const struct stat *sb,
			   int typeflag, struct FTW *ftw)
{
	enum bpf_attach_type type;
	bool skip = true;
	int cgroup_fd;

	if (typeflag != FTW_D)
		return 0;

	cgroup_fd = FUNC8(fpath, O_RDONLY);
	if (cgroup_fd < 0) {
		FUNC9("can't open cgroup %s: %s", fpath, FUNC12(errno));
		return SHOW_TREE_FN_ERR;
	}

	for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++) {
		int count = FUNC1(cgroup_fd, type);

		if (count < 0 && errno != EINVAL) {
			FUNC9("can't query bpf programs attached to %s: %s",
			      fpath, FUNC12(errno));
			FUNC0(cgroup_fd);
			return SHOW_TREE_FN_ERR;
		}
		if (count > 0) {
			skip = false;
			break;
		}
	}

	if (skip) {
		FUNC0(cgroup_fd);
		return 0;
	}

	if (json_output) {
		FUNC6(json_wtr);
		FUNC7(json_wtr, "cgroup", fpath);
		FUNC4(json_wtr, "programs");
		FUNC5(json_wtr);
	} else {
		FUNC10("%s\n", fpath);
	}

	for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++)
		FUNC11(cgroup_fd, type, ftw->level);

	if (errno == EINVAL)
		/* Last attach type does not support query.
		 * Do not report an error for this, especially because batch
		 * mode would stop processing commands.
		 */
		errno = 0;

	if (json_output) {
		FUNC2(json_wtr);
		FUNC3(json_wtr);
	}

	FUNC0(cgroup_fd);

	return 0;
}