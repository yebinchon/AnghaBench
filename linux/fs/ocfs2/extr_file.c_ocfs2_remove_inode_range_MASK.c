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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sb; } ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_rec {int e_flags; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct ocfs2_extent_list*,struct ocfs2_extent_rec*,int,int*,int*,int*,scalar_t__*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct inode*,struct buffer_head*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ocfs2_path*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ocfs2_path*,int) ; 
 int FUNC11 (struct ocfs2_extent_list*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 struct ocfs2_path* FUNC16 (struct ocfs2_extent_tree*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_path*,int) ; 
 int FUNC18 (struct inode*,struct ocfs2_extent_tree*,int,int,int,int,struct ocfs2_cached_dealloc_ctxt*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC22 (struct inode*,struct buffer_head*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct inode*,scalar_t__,scalar_t__) ; 
 struct ocfs2_extent_list* FUNC24 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC25 (unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC26 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC28(struct inode *inode,
			     struct buffer_head *di_bh, u64 byte_start,
			     u64 byte_len)
{
	int ret = 0, flags = 0, done = 0, i;
	u32 trunc_start, trunc_len, trunc_end, trunc_cpos, phys_cpos;
	u32 cluster_in_el;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct address_space *mapping = inode->i_mapping;
	struct ocfs2_extent_tree et;
	struct ocfs2_path *path = NULL;
	struct ocfs2_extent_list *el = NULL;
	struct ocfs2_extent_rec *rec = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	u64 blkno, refcount_loc = FUNC3(di->i_refcount_loc);

	FUNC14(&et, FUNC0(inode), di_bh);
	FUNC13(&dealloc);

	FUNC25(
			(unsigned long long)FUNC1(inode)->ip_blkno,
			(unsigned long long)byte_start,
			(unsigned long long)byte_len);

	if (byte_len == 0)
		return 0;

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC22(inode, di_bh, byte_start,
					    byte_start + byte_len, 0);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
		/*
		 * There's no need to get fancy with the page cache
		 * truncate of an inline-data inode. We're talking
		 * about less than a page here, which will be cached
		 * in the dinode buffer anyway.
		 */
		FUNC27(mapping, 0, 0, 0);
		FUNC26(mapping, 0);
		goto out;
	}

	/*
	 * For reflinks, we may need to CoW 2 clusters which might be
	 * partially zero'd later, if hole's start and end offset were
	 * within one cluster(means is not exactly aligned to clustersize).
	 */

	if (FUNC15(inode)) {
		ret = FUNC8(inode, di_bh, byte_start);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		ret = FUNC8(inode, di_bh, byte_start + byte_len);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	trunc_start = FUNC7(osb->sb, byte_start);
	trunc_end = (byte_start + byte_len) >> osb->s_clustersize_bits;
	cluster_in_el = trunc_end;

	ret = FUNC23(inode, byte_start, byte_len);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	path = FUNC16(&et);
	if (!path) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	while (trunc_end > trunc_start) {

		ret = FUNC10(FUNC0(inode), path,
				      cluster_in_el);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		el = FUNC24(path);

		i = FUNC11(el, trunc_end);
		/*
		 * Need to go to previous extent block.
		 */
		if (i < 0) {
			if (path->p_tree_depth == 0)
				break;

			ret = FUNC9(inode->i_sb,
							    path,
							    &cluster_in_el);
			if (ret) {
				FUNC4(ret);
				goto out;
			}

			/*
			 * We've reached the leftmost extent block,
			 * it's safe to leave.
			 */
			if (cluster_in_el == 0)
				break;

			/*
			 * The 'pos' searched for previous extent block is
			 * always one cluster less than actual trunc_end.
			 */
			trunc_end = cluster_in_el + 1;

			FUNC17(path, 1);

			continue;

		} else
			rec = &el->l_recs[i];

		FUNC6(inode, el, rec, trunc_start, &trunc_cpos,
				     &trunc_len, &trunc_end, &blkno, &done);
		if (done)
			break;

		flags = rec->e_flags;
		phys_cpos = FUNC5(inode->i_sb, blkno);

		ret = FUNC18(inode, &et, trunc_cpos,
					       phys_cpos, trunc_len, flags,
					       &dealloc, refcount_loc, false);
		if (ret < 0) {
			FUNC4(ret);
			goto out;
		}

		cluster_in_el = trunc_end;

		FUNC17(path, 1);
	}

	FUNC21(inode, byte_start, byte_len);

out:
	FUNC12(path);
	FUNC20(osb, 1);
	FUNC19(osb, &dealloc);

	return ret;
}