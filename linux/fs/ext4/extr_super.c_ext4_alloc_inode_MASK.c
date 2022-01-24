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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_rsv_conversion_work; int /*<<< orphan*/  i_unwritten; scalar_t__ i_datasync_tid; scalar_t__ i_sync_tid; int /*<<< orphan*/  i_completed_io_lock; int /*<<< orphan*/  i_rsv_conversion_list; int /*<<< orphan*/ * jinode; int /*<<< orphan*/  i_dquot; scalar_t__ i_reserved_quota; int /*<<< orphan*/  i_pending_tree; int /*<<< orphan*/  i_block_reservation_lock; scalar_t__ i_da_metadata_calc_last_lblock; scalar_t__ i_da_metadata_calc_len; scalar_t__ i_reserved_data_blocks; scalar_t__ i_es_shrink_lblk; scalar_t__ i_es_shk_nr; scalar_t__ i_es_all_nr; int /*<<< orphan*/  i_es_list; int /*<<< orphan*/  i_es_lock; int /*<<< orphan*/  i_es_tree; int /*<<< orphan*/  i_prealloc_lock; int /*<<< orphan*/  i_prealloc_list; int /*<<< orphan*/  i_raw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_end_io_rsv_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_inode_cachep ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 struct ext4_inode_info* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC10(struct super_block *sb)
{
	struct ext4_inode_info *ei;

	ei = FUNC6(ext4_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;

	FUNC5(&ei->vfs_inode, 1);
	FUNC9(&ei->i_raw_lock);
	FUNC0(&ei->i_prealloc_list);
	FUNC9(&ei->i_prealloc_lock);
	FUNC3(&ei->i_es_tree);
	FUNC8(&ei->i_es_lock);
	FUNC0(&ei->i_es_list);
	ei->i_es_all_nr = 0;
	ei->i_es_shk_nr = 0;
	ei->i_es_shrink_lblk = 0;
	ei->i_reserved_data_blocks = 0;
	ei->i_da_metadata_calc_len = 0;
	ei->i_da_metadata_calc_last_lblock = 0;
	FUNC9(&(ei->i_block_reservation_lock));
	FUNC4(&ei->i_pending_tree);
#ifdef CONFIG_QUOTA
	ei->i_reserved_quota = 0;
	memset(&ei->i_dquot, 0, sizeof(ei->i_dquot));
#endif
	ei->jinode = NULL;
	FUNC0(&ei->i_rsv_conversion_list);
	FUNC9(&ei->i_completed_io_lock);
	ei->i_sync_tid = 0;
	ei->i_datasync_tid = 0;
	FUNC2(&ei->i_unwritten, 0);
	FUNC1(&ei->i_rsv_conversion_work, ext4_end_io_rsv_work);
	return &ei->vfs_inode;
}