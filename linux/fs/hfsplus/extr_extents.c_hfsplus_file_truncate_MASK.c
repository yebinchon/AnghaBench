#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_size; struct address_space* i_mapping; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct hfsplus_inode_info {int phys_size; void* first_blocks; int extent_state; int fs_blocks; int /*<<< orphan*/  extents_lock; void* alloc_blocks; void* cached_blocks; void* cached_start; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  first_extents; } ;
struct hfs_find_data {TYPE_1__* tree; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
struct TYPE_4__ {int alloc_blksz; int alloc_blksz_shift; int /*<<< orphan*/  ext_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  tree_lock; } ;

/* Variables and functions */
 int HFSPLUS_EXT_DIRTY ; 
 int HFSPLUS_EXT_NEW ; 
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  HFSPLUS_I_ALLOC_DIRTY ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  INODE ; 
 int FUNC2 (struct hfs_find_data*,struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,void**) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,void*) ; 

void FUNC16(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct hfsplus_inode_info *hip = FUNC0(inode);
	struct hfs_find_data fd;
	u32 alloc_cnt, blk_cnt, start;
	int res;

	FUNC4(INODE, "truncate: %lu, %llu -> %llu\n",
		inode->i_ino, (long long)hip->phys_size, inode->i_size);

	if (inode->i_size > hip->phys_size) {
		struct address_space *mapping = inode->i_mapping;
		struct page *page;
		void *fsdata;
		loff_t size = inode->i_size;

		res = FUNC14(NULL, mapping, size, 0, 0,
					    &page, &fsdata);
		if (res)
			return;
		res = FUNC15(NULL, mapping, size,
			0, 0, page, fsdata);
		if (res < 0)
			return;
		FUNC11(inode);
		return;
	} else if (inode->i_size == hip->phys_size)
		return;

	blk_cnt = (inode->i_size + FUNC1(sb)->alloc_blksz - 1) >>
			FUNC1(sb)->alloc_blksz_shift;

	FUNC12(&hip->extents_lock);

	alloc_cnt = hip->alloc_blocks;
	if (blk_cnt == alloc_cnt)
		goto out_unlock;

	res = FUNC6(FUNC1(sb)->ext_tree, &fd);
	if (res) {
		FUNC13(&hip->extents_lock);
		/* XXX: We lack error handling of hfsplus_file_truncate() */
		return;
	}
	while (1) {
		if (alloc_cnt == hip->first_blocks) {
			FUNC13(&fd.tree->tree_lock);
			FUNC8(sb, hip->first_extents,
					     alloc_cnt, alloc_cnt - blk_cnt);
			FUNC7(hip->first_extents);
			hip->first_blocks = blk_cnt;
			FUNC12(&fd.tree->tree_lock);
			break;
		}
		res = FUNC2(&fd, inode, alloc_cnt);
		if (res)
			break;
		FUNC3(&fd);

		FUNC13(&fd.tree->tree_lock);
		start = hip->cached_start;
		FUNC8(sb, hip->cached_extents,
				     alloc_cnt - start, alloc_cnt - blk_cnt);
		FUNC7(hip->cached_extents);
		if (blk_cnt > start) {
			hip->extent_state |= HFSPLUS_EXT_DIRTY;
			break;
		}
		alloc_cnt = start;
		hip->cached_start = hip->cached_blocks = 0;
		hip->extent_state &= ~(HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW);
		FUNC12(&fd.tree->tree_lock);
	}
	FUNC5(&fd);

	hip->alloc_blocks = blk_cnt;
out_unlock:
	FUNC13(&hip->extents_lock);
	hip->phys_size = inode->i_size;
	hip->fs_blocks = (inode->i_size + sb->s_blocksize - 1) >>
		sb->s_blocksize_bits;
	FUNC10(inode, hip->fs_blocks << sb->s_blocksize_bits);
	FUNC9(inode, HFSPLUS_I_ALLOC_DIRTY);
}