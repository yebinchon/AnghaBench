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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_super_block {int dummy; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/ * i_data; } ;
struct ext4_extent_header {scalar_t__ eh_depth; scalar_t__ eh_entries; } ;
struct ext4_extent {scalar_t__ ee_len; int /*<<< orphan*/  ee_block; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned int ext4_lblk_t ;
typedef  unsigned int ext4_fsblk_t ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELALLOC ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXT4_HT_MIGRATE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ EXT4_MAX_BLOCK_FILE_PHYS ; 
 unsigned int EXT4_NDIR_BLOCKS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*) ; 
 unsigned int FUNC11 (struct ext4_extent*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 struct ext4_extent_header* FUNC18 (struct inode*) ; 
 int FUNC19 (scalar_t__) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(struct inode *inode)
{
	struct ext4_extent_header	*eh;
	struct ext4_super_block		*es = FUNC1(inode->i_sb)->s_es;
	struct ext4_inode_info		*ei = FUNC0(inode);
	struct ext4_extent		*ex;
	unsigned int			i, len;
	ext4_lblk_t			start, end;
	ext4_fsblk_t			blk;
	handle_t			*handle;
	int				ret;

	if (!FUNC13(inode->i_sb) ||
	    (!FUNC17(inode, EXT4_INODE_EXTENTS)))
		return -EINVAL;

	if (FUNC12(inode->i_sb))
		return -EOPNOTSUPP;

	/*
	 * In order to get correct extent info, force all delayed allocation
	 * blocks to be allocated, otherwise delayed allocation blocks may not
	 * be reflected and bypass the checks on extent header.
	 */
	if (FUNC22(inode->i_sb, DELALLOC))
		FUNC7(inode);

	handle = FUNC14(inode, EXT4_HT_MIGRATE, 1);
	if (FUNC3(handle))
		return FUNC4(handle);

	FUNC6(&FUNC0(inode)->i_data_sem);
	ret = FUNC10(inode);
	if (ret)
		goto errout;

	eh = FUNC18(inode);
	ex  = FUNC2(eh);
	if (FUNC8(es) > EXT4_MAX_BLOCK_FILE_PHYS ||
	    eh->eh_depth != 0 || FUNC19(eh->eh_entries) > 1) {
		ret = -EOPNOTSUPP;
		goto errout;
	}
	if (eh->eh_entries == 0)
		blk = len = start = end = 0;
	else {
		len = FUNC19(ex->ee_len);
		blk = FUNC11(ex);
		start = FUNC20(ex->ee_block);
		end = start + len - 1;
		if (end >= EXT4_NDIR_BLOCKS) {
			ret = -EOPNOTSUPP;
			goto errout;
		}
	}

	FUNC9(inode, EXT4_INODE_EXTENTS);
	FUNC21(ei->i_data, 0, sizeof(ei->i_data));
	for (i = start; i <= end; i++)
		ei->i_data[i] = FUNC5(blk++);
	FUNC16(handle, inode);
errout:
	FUNC15(handle);
	FUNC23(&FUNC0(inode)->i_data_sem);
	return ret;
}