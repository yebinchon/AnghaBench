#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_path {int /*<<< orphan*/  p_tree_depth; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_rec {int e_flags; scalar_t__ e_int_clusters; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; struct ocfs2_extent_rec* l_recs; scalar_t__ l_next_free_rec; } ;
struct TYPE_4__ {struct ocfs2_extent_list i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {scalar_t__ ip_clusters; scalar_t__ ip_blkno; } ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_EXT_REFCOUNTED ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC17 (struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  ocfs2_journal_access_di ; 
 int FUNC18 (struct ocfs2_super*,scalar_t__,int,struct ocfs2_refcount_tree**,int /*<<< orphan*/ *) ; 
 struct ocfs2_path* FUNC19 (struct buffer_head*,struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_path*,int) ; 
 int FUNC22 (struct inode*,struct ocfs2_extent_tree*,scalar_t__,scalar_t__,scalar_t__,int,struct ocfs2_cached_dealloc_ctxt*,scalar_t__,int) ; 
 int FUNC23 (struct ocfs2_super*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 TYPE_2__* FUNC27 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC28 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC29 (unsigned long long,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC30(struct ocfs2_super *osb,
			  struct inode *inode,
			  struct buffer_head *di_bh)
{
	int status = 0, i, flags = 0;
	u32 new_highest_cpos, range, trunc_cpos, trunc_len, phys_cpos, coff;
	u64 blkno = 0;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_path *path = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_extent_list *root_el = &(di->id2.i_list);
	u64 refcount_loc = FUNC5(di->i_refcount_loc);
	struct ocfs2_extent_tree et;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_refcount_tree *ref_tree = NULL;

	FUNC16(&et, FUNC0(inode), di_bh);
	FUNC15(&dealloc);

	new_highest_cpos = FUNC9(osb->sb,
						     FUNC2(inode));

	path = FUNC19(di_bh, &di->id2.i_list,
			      ocfs2_journal_access_di);
	if (!path) {
		status = -ENOMEM;
		FUNC7(status);
		goto bail;
	}

	FUNC12(inode, new_highest_cpos);

start:
	/*
	 * Check that we still have allocation to delete.
	 */
	if (FUNC1(inode)->ip_clusters == 0) {
		status = 0;
		goto bail;
	}

	/*
	 * Truncate always works against the rightmost tree branch.
	 */
	status = FUNC13(FUNC0(inode), path, UINT_MAX);
	if (status) {
		FUNC7(status);
		goto bail;
	}

	FUNC29(
		(unsigned long long)FUNC1(inode)->ip_blkno,
		new_highest_cpos,
		FUNC1(inode)->ip_clusters,
		path->p_tree_depth);

	/*
	 * By now, el will point to the extent list on the bottom most
	 * portion of this tree. Only the tail record is considered in
	 * each pass.
	 *
	 * We handle the following cases, in order:
	 * - empty extent: delete the remaining branch
	 * - remove the entire record
	 * - remove a partial record
	 * - no record needs to be removed (truncate has completed)
	 */
	el = FUNC28(path);
	if (FUNC3(el->l_next_free_rec) == 0) {
		FUNC11(inode->i_sb,
			    "Inode %llu has empty extent block at %llu\n",
			    (unsigned long long)FUNC1(inode)->ip_blkno,
			    (unsigned long long)FUNC27(path)->b_blocknr);
		status = -EROFS;
		goto bail;
	}

	i = FUNC3(el->l_next_free_rec) - 1;
	rec = &el->l_recs[i];
	flags = rec->e_flags;
	range = FUNC4(rec->e_cpos) + FUNC20(el, rec);

	if (i == 0 && FUNC17(rec)) {
		/*
		 * Lower levels depend on this never happening, but it's best
		 * to check it up here before changing the tree.
		*/
		if (root_el->l_tree_depth && rec->e_int_clusters == 0) {
			FUNC6(ML_ERROR, "Inode %lu has an empty "
				    "extent record, depth %u\n", inode->i_ino,
				    FUNC3(root_el->l_tree_depth));
			status = FUNC23(osb,
					&et, path, &dealloc);
			if (status) {
				FUNC7(status);
				goto bail;
			}

			FUNC21(path, 1);
			goto start;
		} else {
			trunc_cpos = FUNC4(rec->e_cpos);
			trunc_len = 0;
			blkno = 0;
		}
	} else if (FUNC4(rec->e_cpos) >= new_highest_cpos) {
		/*
		 * Truncate entire record.
		 */
		trunc_cpos = FUNC4(rec->e_cpos);
		trunc_len = FUNC20(el, rec);
		blkno = FUNC5(rec->e_blkno);
	} else if (range > new_highest_cpos) {
		/*
		 * Partial truncate. it also should be
		 * the last truncate we're doing.
		 */
		trunc_cpos = new_highest_cpos;
		trunc_len = range - new_highest_cpos;
		coff = new_highest_cpos - FUNC4(rec->e_cpos);
		blkno = FUNC5(rec->e_blkno) +
				FUNC10(inode->i_sb, coff);
	} else {
		/*
		 * Truncate completed, leave happily.
		 */
		status = 0;
		goto bail;
	}

	phys_cpos = FUNC8(inode->i_sb, blkno);

	if ((flags & OCFS2_EXT_REFCOUNTED) && trunc_len && !ref_tree) {
		status = FUNC18(osb, refcount_loc, 1,
				&ref_tree, NULL);
		if (status) {
			FUNC7(status);
			goto bail;
		}
	}

	status = FUNC22(inode, &et, trunc_cpos,
					  phys_cpos, trunc_len, flags, &dealloc,
					  refcount_loc, true);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	FUNC21(path, 1);

	/*
	 * The check above will catch the case where we've truncated
	 * away all allocation.
	 */
	goto start;

bail:
	if (ref_tree)
		FUNC26(osb, ref_tree, 1);

	FUNC25(osb, 1);

	FUNC24(osb, &dealloc);

	FUNC14(path);

	return status;
}