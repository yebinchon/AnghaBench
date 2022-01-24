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
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; } ;
struct f2fs_inode_info {int /*<<< orphan*/  inmem_ilist; scalar_t__* i_gc_failures; int /*<<< orphan*/  inmem_lock; int /*<<< orphan*/  inmem_pages; } ;

/* Variables and functions */
 size_t ATOMIC_FILE ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_ATOMIC_FILE ; 
 size_t GC_FAILURE_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

void FUNC11(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct f2fs_inode_info *fi = FUNC0(inode);

	while (!FUNC5(&fi->inmem_pages)) {
		FUNC6(&fi->inmem_lock);
		FUNC2(inode, &fi->inmem_pages,
						true, false, true);
		FUNC7(&fi->inmem_lock);
	}

	FUNC3(inode, FI_ATOMIC_FILE);
	fi->i_gc_failures[GC_FAILURE_ATOMIC] = 0;
	FUNC10(inode);

	FUNC8(&sbi->inode_lock[ATOMIC_FILE]);
	if (!FUNC5(&fi->inmem_ilist))
		FUNC4(&fi->inmem_ilist);
	FUNC9(&sbi->inode_lock[ATOMIC_FILE]);
}