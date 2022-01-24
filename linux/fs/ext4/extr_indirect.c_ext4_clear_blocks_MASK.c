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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_fsblk_t ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,unsigned long long,unsigned long) ; 
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 int EXT4_FREE_BLOCKS_VALIDATED ; 
 int /*<<< orphan*/  EXT4_INODE_EA_INODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,scalar_t__,unsigned long,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(handle_t *handle, struct inode *inode,
			     struct buffer_head *bh,
			     ext4_fsblk_t block_to_free,
			     unsigned long count, __le32 *first,
			     __le32 *last)
{
	__le32 *p;
	int	flags = EXT4_FREE_BLOCKS_VALIDATED;
	int	err;

	if (FUNC3(inode->i_mode) || FUNC4(inode->i_mode) ||
	    FUNC13(inode, EXT4_INODE_EA_INODE))
		flags |= EXT4_FREE_BLOCKS_FORGET | EXT4_FREE_BLOCKS_METADATA;
	else if (FUNC11(inode))
		flags |= EXT4_FREE_BLOCKS_FORGET;

	if (!FUNC6(FUNC2(inode->i_sb), block_to_free,
				   count)) {
		FUNC1(inode, "attempt to clear invalid "
				 "blocks %llu len %lu",
				 (unsigned long long) block_to_free, count);
		return 1;
	}

	if (FUNC15(handle, inode)) {
		if (bh) {
			FUNC0(bh, "call ext4_handle_dirty_metadata");
			err = FUNC8(handle, inode, bh);
			if (FUNC16(err))
				goto out_err;
		}
		err = FUNC10(handle, inode);
		if (FUNC16(err))
			goto out_err;
		err = FUNC14(handle, inode,
					FUNC5(inode));
		if (FUNC16(err))
			goto out_err;
		if (bh) {
			FUNC0(bh, "retaking write access");
			err = FUNC9(handle, bh);
			if (FUNC16(err))
				goto out_err;
		}
	}

	for (p = first; p < last; p++)
		*p = 0;

	FUNC7(handle, inode, NULL, block_to_free, count, flags);
	return 0;
out_err:
	FUNC12(inode->i_sb, err);
	return err;
}