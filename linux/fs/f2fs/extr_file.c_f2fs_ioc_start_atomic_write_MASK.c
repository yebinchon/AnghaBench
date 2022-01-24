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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; int /*<<< orphan*/ * inode_list; } ;
struct f2fs_inode_info {int /*<<< orphan*/  inmem_task; int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  inmem_ilist; } ;

/* Variables and functions */
 size_t ATOMIC_FILE ; 
 int EACCES ; 
 int EINVAL ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_ATOMIC_FILE ; 
 int /*<<< orphan*/  FI_ATOMIC_REVOKE_REQUEST ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct inode* FUNC9 (struct file*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct file*) ; 
 int FUNC19 (struct file*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct file *filp)
{
	struct inode *inode = FUNC9(filp);
	struct f2fs_inode_info *fi = FUNC0(inode);
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int ret;

	if (!FUNC13(inode))
		return -EACCES;

	if (!FUNC2(inode->i_mode))
		return -EINVAL;

	if (filp->f_flags & O_DIRECT)
		return -EINVAL;

	ret = FUNC19(filp);
	if (ret)
		return ret;

	FUNC12(inode);

	if (FUNC6(inode)) {
		if (FUNC15(inode, FI_ATOMIC_REVOKE_REQUEST))
			ret = -EINVAL;
		goto out;
	}

	ret = FUNC5(inode);
	if (ret)
		goto out;

	FUNC4(&FUNC0(inode)->i_gc_rwsem[WRITE]);

	/*
	 * Should wait end_io to count F2FS_WB_CP_DATA correctly by
	 * f2fs_is_atomic_file.
	 */
	if (FUNC11(inode))
		FUNC8(FUNC1(inode), "Unexpected flush for atomic writes: ino=%lu, npages=%u",
			  inode->i_ino, FUNC11(inode));
	ret = FUNC10(inode->i_mapping, 0, LLONG_MAX);
	if (ret) {
		FUNC25(&FUNC0(inode)->i_gc_rwsem[WRITE]);
		goto out;
	}

	FUNC21(&sbi->inode_lock[ATOMIC_FILE]);
	if (FUNC17(&fi->inmem_ilist))
		FUNC16(&fi->inmem_ilist, &sbi->inode_list[ATOMIC_FILE]);
	FUNC22(&sbi->inode_lock[ATOMIC_FILE]);

	/* add inode in inmem_list first and set atomic_file */
	FUNC20(inode, FI_ATOMIC_FILE);
	FUNC3(inode, FI_ATOMIC_REVOKE_REQUEST);
	FUNC25(&FUNC0(inode)->i_gc_rwsem[WRITE]);

	FUNC7(FUNC1(inode), REQ_TIME);
	FUNC0(inode)->inmem_task = current;
	FUNC23(inode);
	FUNC24(inode);
out:
	FUNC14(inode);
	FUNC18(filp);
	return ret;
}