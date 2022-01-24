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
struct inode {int dummy; } ;
struct f2fs_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_dir_level; int /*<<< orphan*/  i_xattr_sem; int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  inmem_lock; int /*<<< orphan*/  inmem_pages; int /*<<< orphan*/  inmem_ilist; int /*<<< orphan*/  gdirty_list; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  i_sem; int /*<<< orphan*/  dirty_pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  dir_level; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f2fs_inode_cachep ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct f2fs_inode_info* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC7(struct super_block *sb)
{
	struct f2fs_inode_info *fi;

	fi = FUNC5(f2fs_inode_cachep, GFP_F2FS_ZERO);
	if (!fi)
		return NULL;

	FUNC3((void *) fi);

	/* Initialize f2fs-specific inode info */
	FUNC2(&fi->dirty_pages, 0);
	FUNC4(&fi->i_sem);
	FUNC1(&fi->dirty_list);
	FUNC1(&fi->gdirty_list);
	FUNC1(&fi->inmem_ilist);
	FUNC1(&fi->inmem_pages);
	FUNC6(&fi->inmem_lock);
	FUNC4(&fi->i_gc_rwsem[READ]);
	FUNC4(&fi->i_gc_rwsem[WRITE]);
	FUNC4(&fi->i_mmap_sem);
	FUNC4(&fi->i_xattr_sem);

	/* Will be used by directory only */
	fi->i_dir_level = FUNC0(sb)->dir_level;

	return &fi->vfs_inode;
}