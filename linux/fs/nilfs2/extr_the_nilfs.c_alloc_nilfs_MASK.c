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
struct the_nilfs {int /*<<< orphan*/  ns_sb_update_freq; int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_cptree_lock; int /*<<< orphan*/  ns_cptree; int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_next_gen_lock; int /*<<< orphan*/  ns_inode_lock; int /*<<< orphan*/  ns_gc_inodes; int /*<<< orphan*/  ns_dirty_files; int /*<<< orphan*/  ns_snapshot_mount_mutex; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_ndirtyblks; int /*<<< orphan*/  ns_bdev; struct super_block* ns_sb; } ;
struct super_block {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NILFS_SB_FREQ ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct the_nilfs* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct the_nilfs *FUNC6(struct super_block *sb)
{
	struct the_nilfs *nilfs;

	nilfs = FUNC3(sizeof(*nilfs), GFP_KERNEL);
	if (!nilfs)
		return NULL;

	nilfs->ns_sb = sb;
	nilfs->ns_bdev = sb->s_bdev;
	FUNC1(&nilfs->ns_ndirtyblks, 0);
	FUNC2(&nilfs->ns_sem);
	FUNC4(&nilfs->ns_snapshot_mount_mutex);
	FUNC0(&nilfs->ns_dirty_files);
	FUNC0(&nilfs->ns_gc_inodes);
	FUNC5(&nilfs->ns_inode_lock);
	FUNC5(&nilfs->ns_next_gen_lock);
	FUNC5(&nilfs->ns_last_segment_lock);
	nilfs->ns_cptree = RB_ROOT;
	FUNC5(&nilfs->ns_cptree_lock);
	FUNC2(&nilfs->ns_segctor_sem);
	nilfs->ns_sb_update_freq = NILFS_SB_FREQ;

	return nilfs;
}