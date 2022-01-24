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
struct the_nilfs {int /*<<< orphan*/  ns_inode_lock; int /*<<< orphan*/  ns_dirty_files; int /*<<< orphan*/  ns_ndirtyblks; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_dirty; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BUSY ; 
 int /*<<< orphan*/  NILFS_I_DIRTY ; 
 int /*<<< orphan*/  NILFS_I_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct inode *inode, unsigned int nr_dirty)
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct the_nilfs *nilfs = inode->i_sb->s_fs_info;

	FUNC1(nr_dirty, &nilfs->ns_ndirtyblks);

	if (FUNC9(NILFS_I_DIRTY, &ii->i_state))
		return 0;

	FUNC7(&nilfs->ns_inode_lock);
	if (!FUNC10(NILFS_I_QUEUED, &ii->i_state) &&
	    !FUNC10(NILFS_I_BUSY, &ii->i_state)) {
		/*
		 * Because this routine may race with nilfs_dispose_list(),
		 * we have to check NILFS_I_QUEUED here, too.
		 */
		if (FUNC3(&ii->i_dirty) && FUNC2(inode) == NULL) {
			/*
			 * This will happen when somebody is freeing
			 * this inode.
			 */
			FUNC5(inode->i_sb, KERN_WARNING,
				  "cannot set file dirty (ino=%lu): the file is being freed",
				  inode->i_ino);
			FUNC8(&nilfs->ns_inode_lock);
			return -EINVAL; /*
					 * NILFS_I_DIRTY may remain for
					 * freeing inode.
					 */
		}
		FUNC4(&ii->i_dirty, &nilfs->ns_dirty_files);
		FUNC6(NILFS_I_QUEUED, &ii->i_state);
	}
	FUNC8(&nilfs->ns_inode_lock);
	return 0;
}