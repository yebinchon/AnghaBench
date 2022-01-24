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
struct jfs_sb_info {TYPE_1__* bmap; } ;
struct jfs_inode_info {int active_ag; int /*<<< orphan*/  ag_lock; int /*<<< orphan*/  ixpxd; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/ * db_active; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct jfs_sb_info*) ; 
 int FMODE_WRITE ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	int rc;

	if ((rc = FUNC6(inode, file)))
		return rc;

	/*
	 * We attempt to allow only one "active" file open per aggregate
	 * group.  Otherwise, appending to files in parallel can cause
	 * fragmentation within the files.
	 *
	 * If the file is empty, it was probably just created and going
	 * to be written to.  If it has a size, we'll hold off until the
	 * file is actually grown.
	 */
	if (FUNC3(inode->i_mode) && file->f_mode & FMODE_WRITE &&
	    (inode->i_size == 0)) {
		struct jfs_inode_info *ji = FUNC1(inode);
		FUNC7(&ji->ag_lock);
		if (ji->active_ag == -1) {
			struct jfs_sb_info *jfs_sb = FUNC2(inode->i_sb);
			ji->active_ag = FUNC0(FUNC4(&ji->ixpxd), jfs_sb);
			FUNC5(&jfs_sb->bmap->db_active[ji->active_ag]);
		}
		FUNC8(&ji->ag_lock);
	}

	return 0;
}