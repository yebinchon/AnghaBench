#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {unsigned int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct ext4_sb_info {scalar_t__ s_encoding; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIRENT ; 
 int EINVAL ; 
 int ENOSPC ; 
 int ERR_BAD_DX_DIR ; 
 int /*<<< orphan*/  EXT4_GET_BLOCKS_CREATE ; 
 int /*<<< orphan*/  EXT4_INODE_INDEX ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_STATE_NEWENTRY ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ext4_filename*,struct inode*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ *,struct inode*,int*) ; 
 struct buffer_head* FUNC8 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ext4_filename*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_filename*) ; 
 int FUNC12 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,struct ext4_filename*) ; 
 scalar_t__ FUNC13 (struct super_block*) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct super_block*) ; 
 scalar_t__ FUNC16 (struct ext4_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct inode*) ; 
 struct buffer_head* FUNC19 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct ext4_filename*,struct inode*,struct inode*) ; 
 scalar_t__ FUNC23 (struct inode*) ; 
 int FUNC24 (int /*<<< orphan*/ *,struct ext4_filename*,struct inode*,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC25 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static int FUNC26(handle_t *handle, struct dentry *dentry,
			  struct inode *inode)
{
	struct inode *dir = FUNC6(dentry->d_parent);
	struct buffer_head *bh = NULL;
	struct ext4_dir_entry_2 *de;
	struct super_block *sb;
	struct ext4_sb_info *sbi;
	struct ext4_filename fname;
	int	retval;
	int	dx_fallback=0;
	unsigned blocksize;
	ext4_lblk_t block, blocks;
	int	csum_size = 0;

	if (FUNC15(inode->i_sb))
		csum_size = sizeof(struct ext4_dir_entry_tail);

	sb = dir->i_sb;
	sbi = FUNC0(sb);
	blocksize = sb->s_blocksize;
	if (!dentry->d_name.len)
		return -EINVAL;

#ifdef CONFIG_UNICODE
	if (ext4_has_strict_mode(sbi) && IS_CASEFOLDED(dir) &&
	    sbi->s_encoding && utf8_validate(sbi->s_encoding, &dentry->d_name))
		return -EINVAL;
#endif

	retval = FUNC12(dir, &dentry->d_name, 0, &fname);
	if (retval)
		return retval;

	if (FUNC14(dir)) {
		retval = FUNC22(handle, &fname, dir, inode);
		if (retval < 0)
			goto out;
		if (retval == 1) {
			retval = 0;
			goto out;
		}
	}

	if (FUNC23(dir)) {
		retval = FUNC10(handle, &fname, dir, inode);
		if (!retval || (retval != ERR_BAD_DX_DIR))
			goto out;
		FUNC9(dir, EXT4_INODE_INDEX);
		dx_fallback++;
		FUNC18(handle, dir);
	}
	blocks = dir->i_size >> sb->s_blocksize_bits;
	for (block = 0; block < blocks; block++) {
		bh = FUNC19(dir, block, DIRENT);
		if (bh == NULL) {
			bh = FUNC8(handle, dir, block,
					EXT4_GET_BLOCKS_CREATE);
			goto add_to_new_block;
		}
		if (FUNC2(bh)) {
			retval = FUNC3(bh);
			bh = NULL;
			goto out;
		}
		retval = FUNC4(handle, &fname, dir, inode,
					   NULL, bh);
		if (retval != -ENOSPC)
			goto out;

		if (blocks == 1 && !dx_fallback &&
		    FUNC13(sb)) {
			retval = FUNC24(handle, &fname, dir,
						  inode, bh);
			bh = NULL; /* make_indexed_dir releases bh */
			goto out;
		}
		FUNC5(bh);
	}
	bh = FUNC7(handle, dir, &block);
add_to_new_block:
	if (FUNC2(bh)) {
		retval = FUNC3(bh);
		bh = NULL;
		goto out;
	}
	de = (struct ext4_dir_entry_2 *) bh->b_data;
	de->inode = 0;
	de->rec_len = FUNC20(blocksize - csum_size, blocksize);

	if (csum_size)
		FUNC17(bh, blocksize);

	retval = FUNC4(handle, &fname, dir, inode, de, bh);
out:
	FUNC11(&fname);
	FUNC5(bh);
	if (retval == 0)
		FUNC21(inode, EXT4_STATE_NEWENTRY);
	return retval;
}