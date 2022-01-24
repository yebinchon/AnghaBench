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
typedef  int u32 ;
struct super_block {scalar_t__ s_blocksize; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct hfsplus_sb_info {int fs_shift; int blockoffset; } ;
struct hfsplus_inode_info {int fs_blocks; int alloc_blocks; int first_blocks; int extent_state; int cached_start; int /*<<< orphan*/  phys_size; int /*<<< orphan*/  extents_lock; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  first_extents; } ;
struct buffer_head {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXTENT ; 
 scalar_t__ HFSPLUS_EXT_CNID ; 
 int HFSPLUS_EXT_DIRTY ; 
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,long long,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,int) ; 
 int FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

int FUNC12(struct inode *inode, sector_t iblock,
		      struct buffer_head *bh_result, int create)
{
	struct super_block *sb = inode->i_sb;
	struct hfsplus_sb_info *sbi = FUNC1(sb);
	struct hfsplus_inode_info *hip = FUNC0(inode);
	int res = -EIO;
	u32 ablock, dblock, mask;
	sector_t sector;
	int was_dirty = 0;

	/* Convert inode block to disk allocation block */
	ablock = iblock >> sbi->fs_shift;

	if (iblock >= hip->fs_blocks) {
		if (!create)
			return 0;
		if (iblock > hip->fs_blocks)
			return -EIO;
		if (ablock >= hip->alloc_blocks) {
			res = FUNC5(inode, false);
			if (res)
				return res;
		}
	} else
		create = 0;

	if (ablock < hip->first_blocks) {
		dblock = FUNC3(hip->first_extents, ablock);
		goto done;
	}

	if (inode->i_ino == HFSPLUS_EXT_CNID)
		return -EIO;

	FUNC9(&hip->extents_lock);

	/*
	 * hfsplus_ext_read_extent will write out a cached extent into
	 * the extents btree.  In that case we may have to mark the inode
	 * dirty even for a pure read of an extent here.
	 */
	was_dirty = (hip->extent_state & HFSPLUS_EXT_DIRTY);
	res = FUNC4(inode, ablock);
	if (res) {
		FUNC10(&hip->extents_lock);
		return -EIO;
	}
	dblock = FUNC3(hip->cached_extents,
					ablock - hip->cached_start);
	FUNC10(&hip->extents_lock);

done:
	FUNC2(EXTENT, "get_block(%lu): %llu - %u\n",
		inode->i_ino, (long long)iblock, dblock);

	mask = (1 << sbi->fs_shift) - 1;
	sector = ((sector_t)dblock << sbi->fs_shift) +
		  sbi->blockoffset + (iblock & mask);
	FUNC7(bh_result, sb, sector);

	if (create) {
		FUNC11(bh_result);
		hip->phys_size += sb->s_blocksize;
		hip->fs_blocks++;
		FUNC6(inode, sb->s_blocksize);
	}
	if (create || was_dirty)
		FUNC8(inode);
	return 0;
}