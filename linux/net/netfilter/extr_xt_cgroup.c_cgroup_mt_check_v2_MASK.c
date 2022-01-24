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
struct xt_mtchk_param {struct xt_cgroup_info_v2* matchinfo; } ;
struct xt_cgroup_info_v2 {int invert_path; int invert_classid; struct cgroup* priv; int /*<<< orphan*/  path; scalar_t__ has_path; scalar_t__ has_classid; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 struct cgroup* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(const struct xt_mtchk_param *par)
{
	struct xt_cgroup_info_v2 *info = par->matchinfo;
	struct cgroup *cgrp;

	if ((info->invert_path & ~1) || (info->invert_classid & ~1))
		return -EINVAL;

	if (!info->has_path && !info->has_classid) {
		FUNC3("xt_cgroup: no path or classid specified\n");
		return -EINVAL;
	}

	if (info->has_path && info->has_classid) {
		FUNC4("path and classid specified\n");
		return -EINVAL;
	}

	info->priv = NULL;
	if (info->has_path) {
		cgrp = FUNC2(info->path);
		if (FUNC0(cgrp)) {
			FUNC4("invalid path, errno=%ld\n",
					    FUNC1(cgrp));
			return -EINVAL;
		}
		info->priv = cgrp;
	}

	return 0;
}