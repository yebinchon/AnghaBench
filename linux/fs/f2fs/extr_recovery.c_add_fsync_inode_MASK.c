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
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct fsync_inode_entry {int /*<<< orphan*/  list; struct inode* inode; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct fsync_inode_entry* FUNC0 (struct inode*) ; 
 struct fsync_inode_entry* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsync_inode_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsync_entry_slab ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static struct fsync_inode_entry *FUNC9(struct f2fs_sb_info *sbi,
			struct list_head *head, nid_t ino, bool quota_inode)
{
	struct inode *inode;
	struct fsync_inode_entry *entry;
	int err;

	inode = FUNC5(sbi->sb, ino);
	if (FUNC2(inode))
		return FUNC0(inode);

	err = FUNC4(inode);
	if (err)
		goto err_out;

	if (quota_inode) {
		err = FUNC3(inode);
		if (err)
			goto err_out;
	}

	entry = FUNC6(fsync_entry_slab, GFP_F2FS_ZERO);
	entry->inode = inode;
	FUNC8(&entry->list, head);

	return entry;
err_out:
	FUNC7(inode);
	return FUNC1(err);
}