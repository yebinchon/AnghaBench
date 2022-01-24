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
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent_header* p_hdr; struct ext4_extent_idx* p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*,scalar_t__,...) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 struct ext4_extent_idx* FUNC2 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC3 (struct ext4_extent_header*) ; 
 struct ext4_extent_idx* FUNC4 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_extent_idx*) ; 
 struct ext4_extent_header* FUNC10 (struct buffer_head*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode,
				 struct ext4_ext_path *path,
				 ext4_lblk_t *logical, ext4_fsblk_t *phys,
				 struct ext4_extent **ret_ex)
{
	struct buffer_head *bh = NULL;
	struct ext4_extent_header *eh;
	struct ext4_extent_idx *ix;
	struct ext4_extent *ex;
	ext4_fsblk_t block;
	int depth;	/* Note, NOT eh_depth; depth from top of tree */
	int ee_len;

	if (FUNC14(path == NULL)) {
		FUNC0(inode, "path == NULL *logical %d!", *logical);
		return -EFSCORRUPTED;
	}
	depth = path->p_depth;
	*phys = 0;

	if (depth == 0 && path->p_ext == NULL)
		return 0;

	/* usually extent in the path covers blocks smaller
	 * then *logical, but it can be that extent is the
	 * first one in the file */

	ex = path[depth].p_ext;
	ee_len = FUNC7(ex);
	if (*logical < FUNC11(ex->ee_block)) {
		if (FUNC14(FUNC1(path[depth].p_hdr) != ex)) {
			FUNC0(inode,
					 "first_extent(path[%d].p_hdr) != ex",
					 depth);
			return -EFSCORRUPTED;
		}
		while (--depth >= 0) {
			ix = path[depth].p_idx;
			if (FUNC14(ix != FUNC2(path[depth].p_hdr))) {
				FUNC0(inode,
						 "ix != EXT_FIRST_INDEX *logical %d!",
						 *logical);
				return -EFSCORRUPTED;
			}
		}
		goto found_extent;
	}

	if (FUNC14(*logical < (FUNC11(ex->ee_block) + ee_len))) {
		FUNC0(inode,
				 "logical %d < ee_block %d + ee_len %d!",
				 *logical, FUNC11(ex->ee_block), ee_len);
		return -EFSCORRUPTED;
	}

	if (ex != FUNC3(path[depth].p_hdr)) {
		/* next allocated block in this leaf */
		ex++;
		goto found_extent;
	}

	/* go up and search for index to the right */
	while (--depth >= 0) {
		ix = path[depth].p_idx;
		if (ix != FUNC4(path[depth].p_hdr))
			goto got_index;
	}

	/* we've gone up to the root and found no index to the right */
	return 0;

got_index:
	/* we've found index to the right, let's
	 * follow it and find the closest allocated
	 * block to the right */
	ix++;
	block = FUNC9(ix);
	while (++depth < path->p_depth) {
		/* subtract from p_depth to get proper eh_depth */
		bh = FUNC13(inode, block,
					    path->p_depth - depth, 0);
		if (FUNC5(bh))
			return FUNC6(bh);
		eh = FUNC10(bh);
		ix = FUNC2(eh);
		block = FUNC9(ix);
		FUNC12(bh);
	}

	bh = FUNC13(inode, block, path->p_depth - depth, 0);
	if (FUNC5(bh))
		return FUNC6(bh);
	eh = FUNC10(bh);
	ex = FUNC1(eh);
found_extent:
	*logical = FUNC11(ex->ee_block);
	*phys = FUNC8(ex);
	*ret_ex = ex;
	if (bh)
		FUNC12(bh);
	return 0;
}