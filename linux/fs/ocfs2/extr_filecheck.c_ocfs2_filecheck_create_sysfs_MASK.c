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
struct TYPE_3__ {int /*<<< orphan*/  kset; } ;
struct ocfs2_filecheck_sysfs_entry {struct ocfs2_filecheck* fs_fcheck; TYPE_1__ fs_kobj; int /*<<< orphan*/  fs_kobj_unregister; } ;
struct ocfs2_super {int /*<<< orphan*/  osb_dev_kset; struct ocfs2_filecheck_sysfs_entry osb_fc_ent; } ;
struct ocfs2_filecheck {scalar_t__ fc_done; scalar_t__ fc_size; int /*<<< orphan*/  fc_max; int /*<<< orphan*/  fc_lock; int /*<<< orphan*/  fc_head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_FILECHECK_MINSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_filecheck*) ; 
 struct ocfs2_filecheck* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ocfs2_ktype_filecheck ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ocfs2_super *osb)
{
	int ret;
	struct ocfs2_filecheck *fcheck;
	struct ocfs2_filecheck_sysfs_entry *entry = &osb->osb_fc_ent;

	fcheck = FUNC3(sizeof(struct ocfs2_filecheck), GFP_NOFS);
	if (!fcheck)
		return -ENOMEM;

	FUNC0(&fcheck->fc_head);
	FUNC6(&fcheck->fc_lock);
	fcheck->fc_max = OCFS2_FILECHECK_MINSIZE;
	fcheck->fc_size = 0;
	fcheck->fc_done = 0;

	entry->fs_kobj.kset = osb->osb_dev_kset;
	FUNC1(&entry->fs_kobj_unregister);
	ret = FUNC4(&entry->fs_kobj, &ocfs2_ktype_filecheck,
					NULL, "filecheck");
	if (ret) {
		FUNC5(&entry->fs_kobj);
		FUNC2(fcheck);
		return ret;
	}

	entry->fs_fcheck = fcheck;
	return 0;
}