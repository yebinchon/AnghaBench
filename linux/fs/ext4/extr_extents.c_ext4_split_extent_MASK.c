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
struct inode {int dummy; } ;
struct ext4_map_blocks {int m_len; scalar_t__ m_lblk; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*,unsigned long) ; 
 int EXT4_EXT_DATA_VALID1 ; 
 int EXT4_EXT_DATA_VALID2 ; 
 int EXT4_EXT_MARK_UNWRIT1 ; 
 int EXT4_EXT_MARK_UNWRIT2 ; 
 int EXT4_EXT_MAY_ZEROOUT ; 
 int EXT4_GET_BLOCKS_PRE_IO ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 unsigned int FUNC3 (struct ext4_extent*) ; 
 int FUNC4 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC6 (struct inode*,scalar_t__,struct ext4_ext_path**,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,scalar_t__,int,int) ; 
 unsigned int FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(handle_t *handle,
			      struct inode *inode,
			      struct ext4_ext_path **ppath,
			      struct ext4_map_blocks *map,
			      int split_flag,
			      int flags)
{
	struct ext4_ext_path *path = *ppath;
	ext4_lblk_t ee_block;
	struct ext4_extent *ex;
	unsigned int ee_len, depth;
	int err = 0;
	int unwritten;
	int split_flag1, flags1;
	int allocated = map->m_len;

	depth = FUNC8(inode);
	ex = path[depth].p_ext;
	ee_block = FUNC9(ex->ee_block);
	ee_len = FUNC3(ex);
	unwritten = FUNC4(ex);

	if (map->m_lblk + map->m_len < ee_block + ee_len) {
		split_flag1 = split_flag & EXT4_EXT_MAY_ZEROOUT;
		flags1 = flags | EXT4_GET_BLOCKS_PRE_IO;
		if (unwritten)
			split_flag1 |= EXT4_EXT_MARK_UNWRIT1 |
				       EXT4_EXT_MARK_UNWRIT2;
		if (split_flag & EXT4_EXT_DATA_VALID2)
			split_flag1 |= EXT4_EXT_DATA_VALID1;
		err = FUNC7(handle, inode, ppath,
				map->m_lblk + map->m_len, split_flag1, flags1);
		if (err)
			goto out;
	} else {
		allocated = ee_len - (map->m_lblk - ee_block);
	}
	/*
	 * Update path is required because previous ext4_split_extent_at() may
	 * result in split of original leaf or extent zeroout.
	 */
	path = FUNC6(inode, map->m_lblk, ppath, 0);
	if (FUNC1(path))
		return FUNC2(path);
	depth = FUNC8(inode);
	ex = path[depth].p_ext;
	if (!ex) {
		FUNC0(inode, "unexpected hole at %lu",
				 (unsigned long) map->m_lblk);
		return -EFSCORRUPTED;
	}
	unwritten = FUNC4(ex);
	split_flag1 = 0;

	if (map->m_lblk >= ee_block) {
		split_flag1 = split_flag & EXT4_EXT_DATA_VALID2;
		if (unwritten) {
			split_flag1 |= EXT4_EXT_MARK_UNWRIT1;
			split_flag1 |= split_flag & (EXT4_EXT_MAY_ZEROOUT |
						     EXT4_EXT_MARK_UNWRIT2);
		}
		err = FUNC7(handle, inode, ppath,
				map->m_lblk, split_flag1, flags);
		if (err)
			goto out;
	}

	FUNC5(inode, path);
out:
	return err ? err : allocated;
}