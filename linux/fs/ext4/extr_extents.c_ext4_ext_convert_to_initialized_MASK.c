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
struct inode {int i_size; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext4_sb_info {int s_extent_max_zeroout_kb; } ;
struct ext4_map_blocks {unsigned int m_len; unsigned int m_lblk; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; void* ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned int ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXT4_EXT_DATA_VALID2 ; 
 int EXT4_EXT_MAY_ZEROOUT ; 
 struct ext4_sb_info* FUNC1 (TYPE_1__*) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 unsigned int EXT_INIT_MAX_LEN ; 
 struct ext4_extent* FUNC3 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (unsigned int) ; 
 void* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC10 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_extent*) ; 
 scalar_t__ FUNC13 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_extent*,scalar_t__) ; 
 int FUNC15 (struct inode*,struct ext4_extent*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,struct ext4_map_blocks*,int,int) ; 
 int FUNC17 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 unsigned int FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,struct ext4_map_blocks*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,struct ext4_map_blocks*,struct ext4_extent*,struct ext4_extent*) ; 

__attribute__((used)) static int FUNC24(handle_t *handle,
					   struct inode *inode,
					   struct ext4_map_blocks *map,
					   struct ext4_ext_path **ppath,
					   int flags)
{
	struct ext4_ext_path *path = *ppath;
	struct ext4_sb_info *sbi;
	struct ext4_extent_header *eh;
	struct ext4_map_blocks split_map;
	struct ext4_extent zero_ex1, zero_ex2;
	struct ext4_extent *ex, *abut_ex;
	ext4_lblk_t ee_block, eof_block;
	unsigned int ee_len, depth, map_len = map->m_len;
	int allocated = 0, max_zeroout = 0;
	int err = 0;
	int split_flag = EXT4_EXT_DATA_VALID2;

	FUNC18("ext4_ext_convert_to_initialized: inode %lu, logical"
		"block %llu, max_blocks %u\n", inode->i_ino,
		(unsigned long long)map->m_lblk, map_len);

	sbi = FUNC1(inode->i_sb);
	eof_block = (inode->i_size + inode->i_sb->s_blocksize - 1) >>
		inode->i_sb->s_blocksize_bits;
	if (eof_block < map->m_lblk + map_len)
		eof_block = map->m_lblk + map_len;

	depth = FUNC19(inode);
	eh = path[depth].p_hdr;
	ex = path[depth].p_ext;
	ee_block = FUNC21(ex->ee_block);
	ee_len = FUNC10(ex);
	zero_ex1.ee_len = 0;
	zero_ex2.ee_len = 0;

	FUNC22(inode, map, ex);

	/* Pre-conditions */
	FUNC0(!FUNC11(ex));
	FUNC0(!FUNC20(map->m_lblk, ee_block, ee_len));

	/*
	 * Attempt to transfer newly initialized blocks from the currently
	 * unwritten extent to its neighbor. This is much cheaper
	 * than an insertion followed by a merge as those involve costly
	 * memmove() calls. Transferring to the left is the common case in
	 * steady state for workloads doing fallocate(FALLOC_FL_KEEP_SIZE)
	 * followed by append writes.
	 *
	 * Limitations of the current logic:
	 *  - L1: we do not deal with writes covering the whole extent.
	 *    This would require removing the extent if the transfer
	 *    is possible.
	 *  - L2: we only attempt to merge with an extent stored in the
	 *    same extent tree node.
	 */
	if ((map->m_lblk == ee_block) &&
		/* See if we can merge left */
		(map_len < ee_len) &&		/*L1*/
		(ex > FUNC2(eh))) {	/*L2*/
		ext4_lblk_t prev_lblk;
		ext4_fsblk_t prev_pblk, ee_pblk;
		unsigned int prev_len;

		abut_ex = ex - 1;
		prev_lblk = FUNC21(abut_ex->ee_block);
		prev_len = FUNC10(abut_ex);
		prev_pblk = FUNC13(abut_ex);
		ee_pblk = FUNC13(ex);

		/*
		 * A transfer of blocks from 'ex' to 'abut_ex' is allowed
		 * upon those conditions:
		 * - C1: abut_ex is initialized,
		 * - C2: abut_ex is logically abutting ex,
		 * - C3: abut_ex is physically abutting ex,
		 * - C4: abut_ex can receive the additional blocks without
		 *   overflowing the (initialized) length limit.
		 */
		if ((!FUNC11(abut_ex)) &&		/*C1*/
			((prev_lblk + prev_len) == ee_block) &&		/*C2*/
			((prev_pblk + prev_len) == ee_pblk) &&		/*C3*/
			(prev_len < (EXT_INIT_MAX_LEN - map_len))) {	/*C4*/
			err = FUNC9(handle, inode, path + depth);
			if (err)
				goto out;

			FUNC23(inode,
				map, ex, abut_ex);

			/* Shift the start of ex by 'map_len' blocks */
			ex->ee_block = FUNC7(ee_block + map_len);
			FUNC14(ex, ee_pblk + map_len);
			ex->ee_len = FUNC6(ee_len - map_len);
			FUNC12(ex); /* Restore the flag */

			/* Extend abut_ex by 'map_len' blocks */
			abut_ex->ee_len = FUNC6(prev_len + map_len);

			/* Result: number of initialized blocks past m_lblk */
			allocated = map_len;
		}
	} else if (((map->m_lblk + map_len) == (ee_block + ee_len)) &&
		   (map_len < ee_len) &&	/*L1*/
		   ex < FUNC3(eh)) {	/*L2*/
		/* See if we can merge right */
		ext4_lblk_t next_lblk;
		ext4_fsblk_t next_pblk, ee_pblk;
		unsigned int next_len;

		abut_ex = ex + 1;
		next_lblk = FUNC21(abut_ex->ee_block);
		next_len = FUNC10(abut_ex);
		next_pblk = FUNC13(abut_ex);
		ee_pblk = FUNC13(ex);

		/*
		 * A transfer of blocks from 'ex' to 'abut_ex' is allowed
		 * upon those conditions:
		 * - C1: abut_ex is initialized,
		 * - C2: abut_ex is logically abutting ex,
		 * - C3: abut_ex is physically abutting ex,
		 * - C4: abut_ex can receive the additional blocks without
		 *   overflowing the (initialized) length limit.
		 */
		if ((!FUNC11(abut_ex)) &&		/*C1*/
		    ((map->m_lblk + map_len) == next_lblk) &&		/*C2*/
		    ((ee_pblk + ee_len) == next_pblk) &&		/*C3*/
		    (next_len < (EXT_INIT_MAX_LEN - map_len))) {	/*C4*/
			err = FUNC9(handle, inode, path + depth);
			if (err)
				goto out;

			FUNC23(inode,
				map, ex, abut_ex);

			/* Shift the start of abut_ex by 'map_len' blocks */
			abut_ex->ee_block = FUNC7(next_lblk - map_len);
			FUNC14(abut_ex, next_pblk - map_len);
			ex->ee_len = FUNC6(ee_len - map_len);
			FUNC12(ex); /* Restore the flag */

			/* Extend abut_ex by 'map_len' blocks */
			abut_ex->ee_len = FUNC6(next_len + map_len);

			/* Result: number of initialized blocks past m_lblk */
			allocated = map_len;
		}
	}
	if (allocated) {
		/* Mark the block containing both extents as dirty */
		FUNC8(handle, inode, path + depth);

		/* Update path to point to the right extent */
		path[depth].p_ext = abut_ex;
		goto out;
	} else
		allocated = ee_len - (map->m_lblk - ee_block);

	FUNC5(map->m_lblk < ee_block);
	/*
	 * It is safe to convert extent to initialized via explicit
	 * zeroout only if extent is fully inside i_size or new_size.
	 */
	split_flag |= ee_block + ee_len <= eof_block ? EXT4_EXT_MAY_ZEROOUT : 0;

	if (EXT4_EXT_MAY_ZEROOUT & split_flag)
		max_zeroout = sbi->s_extent_max_zeroout_kb >>
			(inode->i_sb->s_blocksize_bits - 10);

	if (FUNC4(inode))
		max_zeroout = 0;

	/*
	 * five cases:
	 * 1. split the extent into three extents.
	 * 2. split the extent into two extents, zeroout the head of the first
	 *    extent.
	 * 3. split the extent into two extents, zeroout the tail of the second
	 *    extent.
	 * 4. split the extent into two extents with out zeroout.
	 * 5. no splitting needed, just possibly zeroout the head and / or the
	 *    tail of the extent.
	 */
	split_map.m_lblk = map->m_lblk;
	split_map.m_len = map->m_len;

	if (max_zeroout && (allocated > split_map.m_len)) {
		if (allocated <= max_zeroout) {
			/* case 3 or 5 */
			zero_ex1.ee_block =
				 FUNC7(split_map.m_lblk +
					     split_map.m_len);
			zero_ex1.ee_len =
				FUNC6(allocated - split_map.m_len);
			FUNC14(&zero_ex1,
				FUNC13(ex) + split_map.m_lblk +
				split_map.m_len - ee_block);
			err = FUNC15(inode, &zero_ex1);
			if (err)
				goto out;
			split_map.m_len = allocated;
		}
		if (split_map.m_lblk - ee_block + split_map.m_len <
								max_zeroout) {
			/* case 2 or 5 */
			if (split_map.m_lblk != ee_block) {
				zero_ex2.ee_block = ex->ee_block;
				zero_ex2.ee_len = FUNC6(split_map.m_lblk -
							ee_block);
				FUNC14(&zero_ex2,
						      FUNC13(ex));
				err = FUNC15(inode, &zero_ex2);
				if (err)
					goto out;
			}

			split_map.m_len += split_map.m_lblk - ee_block;
			split_map.m_lblk = ee_block;
			allocated = map->m_len;
		}
	}

	err = FUNC16(handle, inode, ppath, &split_map, split_flag,
				flags);
	if (err > 0)
		err = 0;
out:
	/* If we have gotten a failure, don't zero out status tree */
	if (!err) {
		err = FUNC17(inode, &zero_ex1);
		if (!err)
			err = FUNC17(inode, &zero_ex2);
	}
	return err ? err : allocated;
}