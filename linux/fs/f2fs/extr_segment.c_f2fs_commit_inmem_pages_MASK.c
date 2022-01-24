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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode_info {int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  inmem_lock; } ;

/* Variables and functions */
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_ATOMIC_COMMIT ; 
 size_t WRITE ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct f2fs_inode_info *fi = FUNC0(inode);
	int err;

	FUNC5(sbi, true);

	FUNC4(&fi->i_gc_rwsem[WRITE]);

	FUNC6(sbi);
	FUNC10(inode, FI_ATOMIC_COMMIT);

	FUNC8(&fi->inmem_lock);
	err = FUNC2(inode);
	FUNC9(&fi->inmem_lock);

	FUNC3(inode, FI_ATOMIC_COMMIT);

	FUNC7(sbi);
	FUNC11(&fi->i_gc_rwsem[WRITE]);

	return err;
}