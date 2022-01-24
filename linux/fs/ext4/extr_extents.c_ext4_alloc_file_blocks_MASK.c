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
struct inode {int i_blkbits; int i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct ext4_map_blocks {scalar_t__ m_lblk; scalar_t__ m_len; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int EXT4_GET_BLOCKS_NO_NORMALIZE ; 
 int /*<<< orphan*/  EXT4_HT_MAP_BLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EOFBLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ EXT_UNWRITTEN_MAX_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 unsigned int FUNC4 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC14 (struct inode*,int) ; 
 int FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (struct file*) ; 

__attribute__((used)) static int FUNC17(struct file *file, ext4_lblk_t offset,
				  ext4_lblk_t len, loff_t new_size,
				  int flags)
{
	struct inode *inode = FUNC16(file);
	handle_t *handle;
	int ret = 0;
	int ret2 = 0;
	int retries = 0;
	int depth = 0;
	struct ext4_map_blocks map;
	unsigned int credits;
	loff_t epos;

	FUNC0(!FUNC12(inode, EXT4_INODE_EXTENTS));
	map.m_lblk = offset;
	map.m_len = len;
	/*
	 * Don't normalize the request if it can fit in one extent so
	 * that it doesn't get unnecessarily split into multiple
	 * extents.
	 */
	if (len <= EXT_UNWRITTEN_MAX_LEN)
		flags |= EXT4_GET_BLOCKS_NO_NORMALIZE;

	/*
	 * credits to insert 1 extent into extent tree
	 */
	credits = FUNC4(inode, len);
	depth = FUNC15(inode);

retry:
	while (ret >= 0 && len) {
		/*
		 * Recalculate credits when extent tree depth changes.
		 */
		if (depth != FUNC15(inode)) {
			credits = FUNC4(inode, len);
			depth = FUNC15(inode);
		}

		handle = FUNC6(inode, EXT4_HT_MAP_BLOCKS,
					    credits);
		if (FUNC1(handle)) {
			ret = FUNC2(handle);
			break;
		}
		ret = FUNC8(handle, inode, &map, flags);
		if (ret <= 0) {
			FUNC5("inode #%lu: block %u: len %u: "
				   "ext4_ext_map_blocks returned %d",
				   inode->i_ino, map.m_lblk,
				   map.m_len, ret);
			FUNC9(handle, inode);
			ret2 = FUNC7(handle);
			break;
		}
		map.m_lblk += ret;
		map.m_len = len = len - ret;
		epos = (loff_t)map.m_lblk << inode->i_blkbits;
		inode->i_ctime = FUNC3(inode);
		if (new_size) {
			if (epos > new_size)
				epos = new_size;
			if (FUNC14(inode, epos) & 0x1)
				inode->i_mtime = inode->i_ctime;
		} else {
			if (epos > inode->i_size)
				FUNC10(inode,
						    EXT4_INODE_EOFBLOCKS);
		}
		FUNC9(handle, inode);
		FUNC13(handle, inode, 1);
		ret2 = FUNC7(handle);
		if (ret2)
			break;
	}
	if (ret == -ENOSPC &&
			FUNC11(inode->i_sb, &retries)) {
		ret = 0;
		goto retry;
	}

	return ret > 0 ? ret2 : ret;
}