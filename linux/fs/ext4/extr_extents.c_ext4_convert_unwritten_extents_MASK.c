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
struct inode {unsigned int i_blkbits; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_map_blocks {unsigned int m_lblk; unsigned int m_len; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_GET_BLOCKS_IO_CONVERT_EXT ; 
 int /*<<< orphan*/  EXT4_HT_EXT_CONVERT ; 
 int /*<<< orphan*/  EXT4_HT_MAP_BLOCKS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned int,int) ; 

int FUNC10(handle_t *handle, struct inode *inode,
				   loff_t offset, ssize_t len)
{
	unsigned int max_blocks;
	int ret = 0;
	int ret2 = 0;
	struct ext4_map_blocks map;
	unsigned int credits, blkbits = inode->i_blkbits;

	map.m_lblk = offset >> blkbits;
	max_blocks = FUNC0(len, offset, blkbits);

	/*
	 * This is somewhat ugly but the idea is clear: When transaction is
	 * reserved, everything goes into it. Otherwise we rather start several
	 * smaller transactions for conversion of each extent separately.
	 */
	if (handle) {
		handle = FUNC5(handle,
						     EXT4_HT_EXT_CONVERT);
		if (FUNC1(handle))
			return FUNC2(handle);
		credits = 0;
	} else {
		/*
		 * credits to insert 1 extent into extent tree
		 */
		credits = FUNC3(inode, max_blocks);
	}
	while (ret >= 0 && ret < max_blocks) {
		map.m_lblk += ret;
		map.m_len = (max_blocks -= ret);
		if (credits) {
			handle = FUNC4(inode, EXT4_HT_MAP_BLOCKS,
						    credits);
			if (FUNC1(handle)) {
				ret = FUNC2(handle);
				break;
			}
		}
		ret = FUNC7(handle, inode, &map,
				      EXT4_GET_BLOCKS_IO_CONVERT_EXT);
		if (ret <= 0)
			FUNC9(inode->i_sb,
				     "inode #%lu: block %u: len %u: "
				     "ext4_ext_map_blocks returned %d",
				     inode->i_ino, map.m_lblk,
				     map.m_len, ret);
		FUNC8(handle, inode);
		if (credits)
			ret2 = FUNC6(handle);
		if (ret <= 0 || ret2)
			break;
	}
	if (!credits)
		ret2 = FUNC6(handle);
	return ret > 0 ? ret2 : ret;
}