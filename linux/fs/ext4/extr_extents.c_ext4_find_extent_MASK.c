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
struct ext4_extent_header {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_entries; } ;
struct ext4_ext_path {short p_maxdepth; short p_depth; int /*<<< orphan*/ * p_ext; int /*<<< orphan*/  p_block; int /*<<< orphan*/ * p_idx; struct ext4_extent_header* p_hdr; struct buffer_head* p_bh; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 struct ext4_ext_path* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,short) ; 
 short EXT4_MAX_EXTENT_DEPTH ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct ext4_ext_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext4_ext_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ext4_extent_header* FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (char*,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 short FUNC12 (struct inode*) ; 
 struct ext4_extent_header* FUNC13 (struct inode*) ; 
 struct ext4_ext_path* FUNC14 (short,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC17 (struct inode*,int /*<<< orphan*/ ,short,int) ; 
 scalar_t__ FUNC18 (int) ; 

struct ext4_ext_path *
FUNC19(struct inode *inode, ext4_lblk_t block,
		 struct ext4_ext_path **orig_path, int flags)
{
	struct ext4_extent_header *eh;
	struct buffer_head *bh;
	struct ext4_ext_path *path = orig_path ? *orig_path : NULL;
	short int depth, i, ppos = 0;
	int ret;

	eh = FUNC13(inode);
	depth = FUNC12(inode);
	if (depth < 0 || depth > EXT4_MAX_EXTENT_DEPTH) {
		FUNC1(inode, "inode has invalid extent depth: %d",
				 depth);
		ret = -EFSCORRUPTED;
		goto err;
	}

	if (path) {
		FUNC6(path);
		if (depth > path[0].p_maxdepth) {
			FUNC15(path);
			*orig_path = path = NULL;
		}
	}
	if (!path) {
		/* account possible depth increase */
		path = FUNC14(depth + 2, sizeof(struct ext4_ext_path),
				GFP_NOFS);
		if (FUNC18(!path))
			return FUNC0(-ENOMEM);
		path[0].p_maxdepth = depth + 1;
	}
	path[0].p_hdr = eh;
	path[0].p_bh = NULL;

	i = depth;
	/* walk through the tree */
	while (i) {
		FUNC11("depth %d: num %d, max %d\n",
			  ppos, FUNC16(eh->eh_entries), FUNC16(eh->eh_max));

		FUNC5(inode, path + ppos, block);
		path[ppos].p_block = FUNC9(path[ppos].p_idx);
		path[ppos].p_depth = i;
		path[ppos].p_ext = NULL;

		bh = FUNC17(inode, path[ppos].p_block, --i,
					    flags);
		if (FUNC2(bh)) {
			ret = FUNC3(bh);
			goto err;
		}

		eh = FUNC10(bh);
		ppos++;
		path[ppos].p_bh = bh;
		path[ppos].p_hdr = eh;
	}

	path[ppos].p_depth = i;
	path[ppos].p_ext = NULL;
	path[ppos].p_idx = NULL;

	/* find extent */
	FUNC4(inode, path + ppos, block);
	/* if not an empty leaf */
	if (path[ppos].p_ext)
		path[ppos].p_block = FUNC7(path[ppos].p_ext);

	FUNC8(inode, path);

	return path;

err:
	FUNC6(path);
	FUNC15(path);
	if (orig_path)
		*orig_path = NULL;
	return FUNC0(ret);
}