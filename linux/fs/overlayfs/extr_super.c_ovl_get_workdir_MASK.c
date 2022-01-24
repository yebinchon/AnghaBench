#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct path {scalar_t__ mnt; int /*<<< orphan*/  dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  workdir; } ;
struct ovl_fs {int workdir_locked; int /*<<< orphan*/  workbasedir_trap; int /*<<< orphan*/  workbasedir; TYPE_1__ config; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,struct ovl_fs*,struct path*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct path*) ; 
 int FUNC4 (struct ovl_fs*,char*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb, struct ovl_fs *ofs,
			   struct path *upperpath)
{
	int err;
	struct path workpath = { };

	err = FUNC3(ofs->config.workdir, &workpath);
	if (err)
		goto out;

	err = -EINVAL;
	if (upperpath->mnt != workpath.mnt) {
		FUNC8("overlayfs: workdir and upperdir must reside under the same mount\n");
		goto out;
	}
	if (!FUNC6(workpath.dentry, upperpath->dentry)) {
		FUNC8("overlayfs: workdir and upperdir must be separate subtrees\n");
		goto out;
	}

	ofs->workbasedir = FUNC0(workpath.dentry);

	if (FUNC1(ofs->workbasedir)) {
		ofs->workdir_locked = true;
	} else {
		err = FUNC4(ofs, "workdir");
		if (err)
			goto out;
	}

	err = FUNC5(sb, ofs->workbasedir, &ofs->workbasedir_trap,
			     "workdir");
	if (err)
		goto out;

	err = FUNC2(sb, ofs, &workpath);

out:
	FUNC7(&workpath);

	return err;
}