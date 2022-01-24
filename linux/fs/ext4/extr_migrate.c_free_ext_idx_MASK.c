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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_depth; int /*<<< orphan*/  eh_entries; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 struct ext4_extent_idx* FUNC0 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_extent_idx*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(handle_t *handle, struct inode *inode,
					struct ext4_extent_idx *ix)
{
	int i, retval = 0;
	ext4_fsblk_t block;
	struct buffer_head *bh;
	struct ext4_extent_header *eh;

	block = FUNC4(ix);
	bh = FUNC5(inode->i_sb, block, 0);
	if (FUNC1(bh))
		return FUNC2(bh);

	eh = (struct ext4_extent_header *)bh->b_data;
	if (eh->eh_depth != 0) {
		ix = FUNC0(eh);
		for (i = 0; i < FUNC7(eh->eh_entries); i++, ix++) {
			retval = FUNC9(handle, inode, ix);
			if (retval)
				break;
		}
	}
	FUNC8(bh);
	FUNC6(handle, inode);
	FUNC3(handle, inode, NULL, block, 1,
			 EXT4_FREE_BLOCKS_METADATA | EXT4_FREE_BLOCKS_FORGET);
	return retval;
}