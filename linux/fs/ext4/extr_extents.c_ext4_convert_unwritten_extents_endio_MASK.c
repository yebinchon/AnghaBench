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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_map_blocks {scalar_t__ m_lblk; unsigned int m_len; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_GET_BLOCKS_CONVERT ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC4 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 struct ext4_ext_path* FUNC8 (struct inode*,scalar_t__,struct ext4_ext_path**,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,struct ext4_ext_path**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long,unsigned int,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(handle_t *handle,
						struct inode *inode,
						struct ext4_map_blocks *map,
						struct ext4_ext_path **ppath)
{
	struct ext4_ext_path *path = *ppath;
	struct ext4_extent *ex;
	ext4_lblk_t ee_block;
	unsigned int ee_len;
	int depth;
	int err = 0;

	depth = FUNC12(inode);
	ex = path[depth].p_ext;
	ee_block = FUNC13(ex->ee_block);
	ee_len = FUNC4(ex);

	FUNC11("ext4_convert_unwritten_extents_endio: inode %lu, logical"
		"block %llu, max_blocks %u\n", inode->i_ino,
		  (unsigned long long)ee_block, ee_len);

	/* If extent is larger than requested it is a clear sign that we still
	 * have some extent state machine issues left. So extent_split is still
	 * required.
	 * TODO: Once all related issues will be fixed this situation should be
	 * illegal.
	 */
	if (ee_block != map->m_lblk || ee_len > map->m_len) {
#ifdef CONFIG_EXT4_DEBUG
		ext4_warning(inode->i_sb, "Inode (%ld) finished: extent logical block %llu,"
			     " len %u; IO logical block %llu, len %u",
			     inode->i_ino, (unsigned long long)ee_block, ee_len,
			     (unsigned long long)map->m_lblk, map->m_len);
#endif
		err = FUNC9(handle, inode, map, ppath,
						 EXT4_GET_BLOCKS_CONVERT);
		if (err < 0)
			return err;
		path = FUNC8(inode, map->m_lblk, ppath, 0);
		if (FUNC0(path))
			return FUNC1(path);
		depth = FUNC12(inode);
		ex = path[depth].p_ext;
	}

	err = FUNC3(handle, inode, path + depth);
	if (err)
		goto out;
	/* first mark the extent as initialized */
	FUNC5(ex);

	/* note: ext4_ext_correct_indexes() isn't needed here because
	 * borders are not changed
	 */
	FUNC7(handle, inode, path, ex);

	/* Mark modified extent as dirty */
	err = FUNC2(handle, inode, path + path->p_depth);
out:
	FUNC6(inode, path);
	return err;
}