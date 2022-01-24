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
struct ext4_inode_info {int /*<<< orphan*/  i_data_sem; } ;
struct ext4_ext_path {scalar_t__ p_idx; int /*<<< orphan*/  p_hdr; struct buffer_head* p_bh; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_EX_FORCE_CACHE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_EXT_PRECACHED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 struct ext4_ext_path* FUNC15 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_ext_path*) ; 
 struct buffer_head* FUNC17 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct inode *inode)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	struct ext4_ext_path *path = NULL;
	struct buffer_head *bh;
	int i = 0, depth, ret = 0;

	if (!FUNC11(inode, EXT4_INODE_EXTENTS))
		return 0;	/* not an extent-mapped inode */

	FUNC6(&ei->i_data_sem);
	depth = FUNC13(inode);

	path = FUNC15(depth + 1, sizeof(struct ext4_ext_path),
		       GFP_NOFS);
	if (path == NULL) {
		FUNC18(&ei->i_data_sem);
		return -ENOMEM;
	}

	/* Don't cache anything if there are no external extent blocks */
	if (depth == 0)
		goto out;
	path[0].p_hdr = FUNC14(inode);
	ret = FUNC7(inode, path[0].p_hdr, depth, 0);
	if (ret)
		goto out;
	path[0].p_idx = FUNC1(path[0].p_hdr);
	while (i >= 0) {
		/*
		 * If this is a leaf block or we've reached the end of
		 * the index block, go up
		 */
		if ((i == depth) ||
		    path[i].p_idx > FUNC2(path[i].p_hdr)) {
			FUNC5(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			continue;
		}
		bh = FUNC17(inode,
					    FUNC9(path[i].p_idx++),
					    depth - i - 1,
					    EXT4_EX_FORCE_CACHE);
		if (FUNC3(bh)) {
			ret = FUNC4(bh);
			break;
		}
		i++;
		path[i].p_bh = bh;
		path[i].p_hdr = FUNC12(bh);
		path[i].p_idx = FUNC1(path[i].p_hdr);
	}
	FUNC10(inode, EXT4_STATE_EXT_PRECACHED);
out:
	FUNC18(&ei->i_data_sem);
	FUNC8(path);
	FUNC16(path);
	return ret;
}